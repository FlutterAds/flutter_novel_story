import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_novel_story_platform_interface.dart';

/// An implementation of [FlutterNovelStoryPlatform] that uses method channels.
class MethodChannelFlutterNovelStory extends FlutterNovelStoryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_novel_story');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
