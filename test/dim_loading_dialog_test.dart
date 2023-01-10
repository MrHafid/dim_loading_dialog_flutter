import 'package:flutter_test/flutter_test.dart';
import 'package:dim_loading_dialog/dim_loading_dialog.dart';
import 'package:dim_loading_dialog/dim_loading_dialog_platform_interface.dart';
import 'package:dim_loading_dialog/dim_loading_dialog_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDimLoadingDialogPlatform
    with MockPlatformInterfaceMixin
    implements DimLoadingDialogPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DimLoadingDialogPlatform initialPlatform =
      DimLoadingDialogPlatform.instance;

  test('$MethodChannelDimLoadingDialog is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDimLoadingDialog>());
  });

  test('getPlatformVersion', () async {
    // DimLoadingDialog dimLoadingDialogPlugin = DimLoadingDialog();
    // MockDimLoadingDialogPlatform fakePlatform = MockDimLoadingDialogPlatform();
    // DimLoadingDialogPlatform.instance = fakePlatform;

    // expect(await dimLoadingDialogPlugin.getPlatformVersion(), '42');
  });
}
