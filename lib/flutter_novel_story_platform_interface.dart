import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_novel_story_method_channel.dart';

abstract class FlutterNovelStoryPlatform extends PlatformInterface {
  /// Constructs a FlutterNovelStoryPlatform.
  FlutterNovelStoryPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterNovelStoryPlatform _instance = MethodChannelFlutterNovelStory();

  /// The default instance of [FlutterNovelStoryPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterNovelStory].
  static FlutterNovelStoryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterNovelStoryPlatform] when
  /// they register themselves.
  static set instance(FlutterNovelStoryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
