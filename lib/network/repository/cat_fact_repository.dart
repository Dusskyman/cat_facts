import 'package:cat_facts/local_storage/cat_fact_storage/cat_fact_storage.dart';
import 'package:cat_facts/models/cat_fact_dto/cat_fact_dto.dart';
import 'package:cat_facts/models/cat_image_dto.dart/cat_image_dto.dart';
import 'package:cat_facts/network/repository/base_repository.dart';
import 'package:logging/logging.dart';
import 'package:dio/src/dio.dart';

class CatFactRepository extends BaseRepository {
  CatFactRepository(Dio dio) : super(dio);
  Logger get _logger => Logger('[$runtimeType]');

  Future<CatFactDto> getCatFact() async {
    late final CatFactDto catFact;
    try {
      final List<CatImageDto> catImageDto = await api.getCatImage();
      final CatFactDto fact = await api.getCatFact();
      catFact = CatFactDto(fact: fact.fact, img: '${catImageDto.first.img}');
    } catch (e) {
      _logger.warning(e);
    }
    return catFact;
  }

  Future<List<CatFactDto>> getSavedCatFact() async {
    final List<CatFactDto> savedCatFacts = await CatFactStorage.instance().getCatFacts();
    return savedCatFacts;
  }
}
