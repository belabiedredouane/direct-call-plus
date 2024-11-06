import 'dart:async';

import 'package:flutter/services.dart';

class DirectCallPlus {
  static const MethodChannel _channel =
      MethodChannel('direct_call_plus');

  static Future<bool?> makeCall(String number) async {
    return await _channel.invokeMethod(
      'callNumber',
      <String, Object>{
        'number': number,
      },
    );
  }
}
