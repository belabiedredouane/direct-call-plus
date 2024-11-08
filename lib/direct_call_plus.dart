import 'dart:async';

import 'package:flutter/services.dart';
/// DirectCallPlus class
class DirectCallPlus {
  static const MethodChannel _channel = MethodChannel('direct_call_plus');

/// Methode to make call to given number
  static Future<bool?> makeCall(String number) async {
    return await _channel.invokeMethod(
      'callNumber',
      <String, Object>{
        'number': number,
      },
    );
  }
}
