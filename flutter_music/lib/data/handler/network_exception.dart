import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_music/data/model/error_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.requestCancelled() = RequestCancelled;

  const factory NetworkException.unauthorisedRequest(
      int serverCode, int errorCode, String message) = UnauthorisedRequest;

  const factory NetworkException.formValidationError(
      int serverCode, int errorCode, String message) = FormValidationError;

  const factory NetworkException.serverValidationError(String message) =
      ServerValidationError;

  const factory NetworkException.badRequest() = BadRequest;

  const factory NetworkException.notFound(
      int serverCode, int errorCode, String message) = NotFound;

  const factory NetworkException.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkException.notAcceptable() = NotAcceptable;

  const factory NetworkException.requestTimeout(
      int serverCode, int errorCode, String message) = RequestTimeout;

  const factory NetworkException.connectionTimeout() = ConnectionTimeout;

  const factory NetworkException.sendTimeout() = SendTimeout;

  const factory NetworkException.conflict(
      int serverCode, int errorCode, String message) = Conflict;

  const factory NetworkException.internalServerError(
      int serverCode, int errorCode, String message) = InternalServerError;

  const factory NetworkException.notImplemented() = NotImplemented;

  const factory NetworkException.serviceUnavailable(
      int serverCode, int errorCode, String message) = ServiceUnavailable;

  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  const factory NetworkException.formatException() = FormatException;

  const factory NetworkException.unableToProcess() = UnableToProcess;

  const factory NetworkException.unProcessableEntity(
      int serverCode, int errorCode, String message) = UnProcessableEntity;

  const factory NetworkException.defaultError(
      int serverCode, int errorCode, String message) = DefaultError;

  const factory NetworkException.unexpectedError() = UnexpectedError;

  static NetworkException getDioException(error) {
    if (error is Exception) {
      try {
        NetworkException networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = NetworkException.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = NetworkException.connectionTimeout();
              break;
            case DioErrorType.other:
              networkExceptions = NetworkException.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = NetworkException.sendTimeout();
              break;
            case DioErrorType.response:
              final serverCode = error.response!.statusCode;
              final serverMessage = error.response!.statusMessage;
              networkExceptions = NetworkException.formValidationError(
                  serverCode!, serverCode, serverMessage!);
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = NetworkException.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = NetworkException.noInternetConnection();
        } else {
          networkExceptions = NetworkException.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (e) {
        return NetworkException.formatException();
      } catch (_) {
        return NetworkException.unexpectedError();
      }
    } else {
      if (error is NetworkException) {
        return NetworkException.noInternetConnection();
      } else if (error is ErrorResponse) {
        return NetworkException.serverValidationError("something wrong");
      } else if (error is Response) {
        return NetworkException.serverValidationError(
            error.statusMessage ?? "");
      } else if (error is DioError) {
        return NetworkException.serverValidationError(error.message);
      } else if (error.toString().contains("is not a subtype of")) {
        return NetworkException.unableToProcess();
      } else {
        return NetworkException.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkException networkExceptions) {
    var errorMessage = "Something wrong happens";
    networkExceptions.when(
      notImplemented: () {
        errorMessage = "Not Implemented";
      },
      requestCancelled: () {
        errorMessage = "Request Cancelled";
      },
      internalServerError: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Internal Server Error";
      },
      notFound: (int serverCode, int errorCode, String message) {
        errorMessage = message;
      },
      serviceUnavailable: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Service unavailable";
      },
      methodNotAllowed: () {
        errorMessage = "Method Allowed";
      },
      badRequest: () {
        errorMessage = "Bad request";
      },
      unauthorisedRequest: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Unauthorised request";
      },
      serverValidationError: (String message) {
        errorMessage = message ?? "Error server validation";
      },
      requestTimeout: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Connection request timeout";
      },
      noInternetConnection: () {
        errorMessage = "No internet connection";
      },
      conflict: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Error due to a conflict";
      },
      sendTimeout: () {
        errorMessage = "Send timeout in connection with API server";
      },
      unableToProcess: () {
        errorMessage = "Unable to process the data";
      },
      defaultError: (int serverCode, int errorCode, String message) {
        errorMessage = message;
      },
      formatException: () {
        errorMessage = "Unexpected error occurred";
      },
      notAcceptable: () {
        errorMessage = "Not acceptable";
      },
      connectionTimeout: () {
        errorMessage = "Connection timeout";
      },
      unProcessableEntity: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Error unable process entity";
      },
      formValidationError: (int serverCode, int errorCode, String message) {
        errorMessage = message ?? "Error form validation";
      },
      unexpectedError: () {
        errorMessage = "Unexpected error occurred";
      },
    );
    return errorMessage;
  }
}
