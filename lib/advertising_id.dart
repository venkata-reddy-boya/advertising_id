import 'dart:async';

import 'package:flutter/services.dart';

class AdvertisingId {
  static const MethodChannel _channel = MethodChannel('advertising_id');

  static Future<String?> get getGAID async {
    final String? version = await _channel.invokeMethod('getGAID');
    return version;
  }
}
