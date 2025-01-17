import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_novel_story/flutter_novel_story.dart';
import 'package:flutter_novel_story/flutter_novel_story_platform_interface.dart';
import 'package:flutter_novel_story/flutter_novel_story_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterNovelStoryPlatform
    with MockPlatformInterfaceMixin
    implements FlutterNovelStoryPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterNovelStoryPlatform initialPlatform =
      FlutterNovelStoryPlatform.instance;

  test('$MethodChannelFlutterNovelStory is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterNovelStory>());
  });

  test('getPlatformVersion', () async {
    FlutterNovelStory flutterNovelStoryPlugin = FlutterNovelStory();
    MockFlutterNovelStoryPlatform fakePlatform =
        MockFlutterNovelStoryPlatform();
    FlutterNovelStoryPlatform.instance = fakePlatform;

    expect(await flutterNovelStoryPlugin.getPlatformVersion(), '42');
  });
}
