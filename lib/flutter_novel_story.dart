import 'flutter_novel_story_platform_interface.dart';

class FlutterNovelStory {
  Future<String?> getPlatformVersion() {
    return FlutterNovelStoryPlatform.instance.getPlatformVersion();
  }
}
