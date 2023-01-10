import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dim_loading_dialog_method_channel.dart';

abstract class DimLoadingDialogPlatform extends PlatformInterface {
  /// Constructs a DimLoadingDialogPlatform.
  DimLoadingDialogPlatform() : super(token: _token);

  static final Object _token = Object();

  static DimLoadingDialogPlatform _instance = MethodChannelDimLoadingDialog();

  /// The default instance of [DimLoadingDialogPlatform] to use.
  ///
  /// Defaults to [MethodChannelDimLoadingDialog].
  static DimLoadingDialogPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DimLoadingDialogPlatform] when
  /// they register themselves.
  static set instance(DimLoadingDialogPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
