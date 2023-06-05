import 'package:cat_facts/config/logger.dart';
import 'package:cat_facts/models/cat_fact_dto/cat_fact_dto.dart';
import 'package:cat_facts/models/cat_fact_with_image/cat_fact_with_image_dto.dart';
import 'package:cat_facts/models/cat_image_dto.dart/cat_image_dto.dart';
import 'package:cat_facts/network/repository/base_repository.dart';
import 'package:dio/src/dio.dart';

class CatFactRepository extends BaseRepository {
  CatFactRepository(Dio dio) : super(dio);

  Future<CatFactWithImageDto> getCatFact() async {
    try {
      final List<CatImageDto> catImageDto = await api.getCatImage();
      final CatFactDto fact = await api.getCatFact();
      Logger.i('CAT IMAGE', catImageDto.first.img.toString());
      final catFact = CatFactWithImageDto(
        fact: fact.fact,
        img: catImageDto.first.img.toString(),
      );
      return catFact;
    } catch (e) {
      rethrow;
    }
  }
}
