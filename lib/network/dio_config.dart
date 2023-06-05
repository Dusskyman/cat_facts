import 'package:cat_facts/network/interceptors/error_intercepter.dart';
import 'package:cat_facts/network/interceptors/header_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String authorized = 'authorized';
const String unauthorized = 'unauthorized';

class DioConfig {
  DioConfig._privateConstructor();

  static final DioConfig _instance = DioConfig._privateConstructor();

  static DioConfig get instance => _instance;

  Interceptor get _errorInterceptor => ErrorInterceptor.instance;

  Interceptor get _headerInterceptor => HeaderInterceptor.instance;

  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 10000,
      sendTimeout: 10000,
    );
  }

  Dio getDio() {
    final dio = Dio(_dioOptions);
    HeaderInterceptor.instance.set(
      dio,
    );
    final interceptors = [
      _headerInterceptor,
      _errorInterceptor,
      PrettyDioLogger(requestHeader: true, requestBody: true),
    ];
    return dio
      ..interceptors.addAll([
        ...interceptors,
      ]);
  }
}
