import 'package:cat_facts/consts.dart';
import 'package:cat_facts/models/cat_fact_dto/cat_fact_dto.dart';
import 'package:logging/logging.dart';
import 'package:cat_facts/services/storage/istorage.dart';
import 'package:cat_facts/services/storage/storage.dart';

class CatFactStorage {
  final IStorage _storage;

  CatFactStorage._(this._storage);

  static final CatFactStorage _catFactStorage = CatFactStorage._(Storage.instance());

  static CatFactStorage instance() => _catFactStorage;

  static const String _catFactsKey = AppConsts.catFactsKey;

  Logger get logger => Logger('[$runtimeType]');

  Future<void> saveCatFacts(List<CatFactDto> catFactList) async {
    logger.info('SAVING CAT FACTS TO STORAGE ${catFactList.toString()}');
    final List<Map<String, dynamic>> catFactsTempMap = catFactList.map((e) => e.toJson()).toList();

    await _storage.save(_catFactsKey, catFactsTempMap);
  }

  Future<List<CatFactDto>> getCatFacts() async {
    try {
      final catFactsMap = await _storage.take<List<dynamic>>(_catFactsKey);
      if (catFactsMap != null && catFactsMap.isNotEmpty) {
        final List<CatFactDto> processedCatFactsList = [];
        final List<Map<String, dynamic>> convertedList = [];
        logger.info('<getCatFacts> => Object: $catFactsMap');
        for (var value in catFactsMap) {
          final Map<String, dynamic> converter = {};
          value.forEach((key, value) {
            converter.addAll({key.toString(): value});
          });
          convertedList.add(converter);
        }
        for (var value in convertedList) {
          processedCatFactsList.add(CatFactDto.fromJson(value));
        }
        return processedCatFactsList;
      }
      return [];
    } catch (e) {
      logger.warning('<getCatFacts> => error: $e');
      return [];
    }
  }

  Future<void> clearCats() async {
    try {
      await _storage.delete(_catFactsKey);
      logger.info('Cat fact was removed from storage');
    } catch (e) {
      logger.warning('<getToken> => error: $e');
    }
  }
}
