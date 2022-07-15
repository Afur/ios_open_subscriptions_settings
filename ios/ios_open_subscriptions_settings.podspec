#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ios_open_subscriptions_settings.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ios_open_subscriptions_settings'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for opening iOS phone settings subscriptions from an app.'
  s.description      = 'A Flutter plugin for opening iOS phone settings subscriptions from an app.'
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Vlad Kostyuk' => 'vlad.kostyuk24@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
