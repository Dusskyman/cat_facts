import 'package:cat_facts/network/api/rest_client.dart';
import 'package:dio/dio.dart';

abstract class BaseRepository {
  BaseRepository(this.dio) : api = RestClient(dio);

  final Dio dio;
  final RestClient api;
}
