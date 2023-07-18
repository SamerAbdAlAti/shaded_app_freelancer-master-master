import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';
import '../../../../../_core/widgets/custom_text_form_field.dart';

late PermissionStatus permissionStatus;

Future<bool> requestImagePermissions() async {
  PermissionStatus status = await Permission.camera.request();

  if (status.isGranted) {
    return true;
  } else {
    return false;
  }
}

@override
void initState() {
  checkPermissions();
}

void checkPermissions() async {
  PermissionStatus status = await Permission.camera.status;

  if (status.isGranted) {
    // Permissions already granted
    // Proceed with accessing the camera or photo library
    print("Successfully");
  } else if (status.isDenied) {
    // Permissions denied
    print("Failed");
    // Show a dialog or message to the user explaining why the permissions are needed
  } else if (status.isPermanentlyDenied) {
    // Permissions permanently denied
    print("Failed");
    // Show a dialog or message to the user explaining that they need to enable permissions manually from settings
  } else if (status.isRestricted) {
    // Permissions restricted (only available on iOS)
    print("Failed");
    // Show a dialog or message to the user explaining that they need to enable permissions manually from settings
  } else {
    // Permissions haven't been requested yet
    bool granted = await requestImagePermissions();

    if (granted) {
      print("Successful");

      // Permissions granted
      // Proceed with accessing the camera or photo library
    } else {
      print("Failed");

      // Permissions denied
      // Show a dialog or message to the user explaining why the permissions are needed
    }
  }
}