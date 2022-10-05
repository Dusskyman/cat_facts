import 'package:cat_facts/network/interceptors/error_intercepter.dart';
import 'package:cat_facts/network/interceptors/header_interceptor.dart';
import 'package:dio/dio.dart';

Future<void> initInterceptors() async {
  HeaderInterceptor.instance.init(
    onError: (DioError error) async {},
    onRequest: (RequestOptions options) async {},
    onResponse: (dynamic t) async {},
  );

  ErrorInterceptor.instance.init(
    onErrorCallback: (DioError error) {},
  );
}
