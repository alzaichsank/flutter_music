import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_music/data/rest_api_service.dart';
import 'package:flutter_music/di/depedencies/dio_authenticator.dart';
import 'package:flutter_music/di/depedencies/dio_logger.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @factory
  RestApiService provideApiService(Dio dio) => RestApiService(dio);

  @LazySingleton()
  Dio provideDio(BaseOptions baseOptions,
      @Named("build_mode") bool shouldShowLogger, DioLogger dioLogger) {
    final dio = Dio(baseOptions);
    dio.interceptors.add(DioAuthenticator(dio));
    if (shouldShowLogger) {
      dio.interceptors.add(dioLogger);
    }
    return dio;
  }

  @Singleton()
  DioLogger provideDioLogger() => DioLogger(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true);

  @Singleton()
  BaseOptions provideDioBaseOptions(
          @Named("base_url") String baseUrl,
          @Named("headers") Map<String, String> headers,
          @Named("connect_time_out") int connectTimeOut,
          @Named("read_time_out") int readTimeOut) =>
      BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
        connectTimeout: connectTimeOut,
        receiveTimeout: readTimeOut,
      );

  @Named("headers")
  Map<String, String> provideHeaders() => {"Accept": "application/json"};

  @Named("read_time_out")
  int get readTimeOut => 15000;

  @Named("connect_time_out")
  int get connectTimeOut => 15000;
}
