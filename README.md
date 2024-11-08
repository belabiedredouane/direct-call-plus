# direct_call_plus

Plugin to call number directly from your application, without going to phone dialer.

## Usage

Add dependency to pubspec.yaml file
```
direct_call_plus: ^1.0.1
```

### Android
No need any additional configuration.

### iOS
Add this to your ```info.plist``` under ```dict``` 
```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>tel</string>
</array>
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:direct_call_plus/direct_call_plus.dart';

void main() {
  runApp(Scaffold(
    body: Center(
      child: RaisedButton(
        onPressed: _callNumber,
        child: Text('Call Number'),
      ),
    ),
  ));
}

_callNumber() async{
  const number = '07xxxxxx44'; //set the number here
  bool res = await DirectCallPlus.makeCall(number);
}
```

## Maintainers

- [Belabied Redouane](https://github.com/belabiedredouane)


