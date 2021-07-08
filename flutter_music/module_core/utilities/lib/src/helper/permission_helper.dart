import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  static final PermissionHelper _singleton = PermissionHelper._internal();

  factory PermissionHelper() {
    return _singleton;
  }

  PermissionHelper._internal();

  Future<PermissionStatus> checkPermissionStatus(Permission permission) async {
    return await permission.status;
  }

  Future<Map<Permission, PermissionStatus>> requestPermissions(
      List<Permission> permission) async {
    return await permission.request();
  }

  Future<bool> shouldRequestPermission(Permission permission) async {
    final status = await permission.status;
    return [
      PermissionStatus.denied,
      PermissionStatus.undetermined,
      PermissionStatus.permanentlyDenied
    ].contains(status);
  }

  Future<bool> shouldShowRationale(Permission permission) async {
    final status = await permission.status;
    final shouldShowRationale = await permission.shouldShowRequestRationale;
    return [PermissionStatus.undetermined, PermissionStatus.permanentlyDenied]
            .contains(status) ||
        shouldShowRationale;
  }

  Future<bool> shouldOpenAppSettings(Permission permission) async {
    final status = await permission.status;
    return PermissionStatus.permanentlyDenied == status;
  }
}
