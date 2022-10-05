import 'package:cat_facts/models/cat_fact_dto/cat_fact_dto.dart';
import 'package:cat_facts/models/cat_image_dto.dart/cat_image_dto.dart';
import 'package:cat_facts/network/api/api.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //GET
  @GET('${Api.baseUrl}/fact')
  Future<CatFactDto> getCatFact();

  @GET('${Api.imageApi}')
  Future<List<CatImageDto>> getCatImage();
}
