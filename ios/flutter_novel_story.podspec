#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_novel_story.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_novel_story'
  s.version          = '1.0.0'
  s.summary          = '一款优质的 Flutter 小说变现插件，帮你快速接入近万部小说，内置功能强大的阅读器，接入即可开始变现'
  s.description      = <<-DESC
一款优质的 Flutter 小说变现插件，帮你快速接入近万部小说，内置功能强大的阅读器，接入即可开始变现
                       DESC
  s.homepage         = 'https://flutterads.top'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'FlutterAds' => 'https://flutterads.top' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'flutter_novel_story_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
