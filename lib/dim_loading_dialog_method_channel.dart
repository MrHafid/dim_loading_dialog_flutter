import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dim_loading_dialog_platform_interface.dart';

/// An implementation of [DimLoadingDialogPlatform] that uses method channels.
class MethodChannelDimLoadingDialog extends DimLoadingDialogPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dim_loading_dialog');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
