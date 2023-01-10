import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dim_loading_dialog/dim_loading_dialog_method_channel.dart';

void main() {
  MethodChannelDimLoadingDialog platform = MethodChannelDimLoadingDialog();
  const MethodChannel channel = MethodChannel('dim_loading_dialog');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
