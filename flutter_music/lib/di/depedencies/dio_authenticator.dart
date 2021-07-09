import 'package:dio/dio.dart';

class DioAuthenticator extends InterceptorsWrapper {
  final Dio previous;
  Dio refreshDio = Dio();

  DioAuthenticator(this.previous);

  @override
  void onResponse(Response response,
      ResponseInterceptorHandler responseInterceptorHandler) {
    return super.onResponse(response, responseInterceptorHandler);
  }

  @override
  void onError(
      DioError error, ErrorInterceptorHandler errorInterceptorHandler) async {
    return super.onError(error, errorInterceptorHandler);
  }
}
