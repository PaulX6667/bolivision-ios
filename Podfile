
platform :ios, '13.0'
use_frameworks!
use_modular_headers!
project 'bolivision-ios.xcodeproj'

target 'bolivisionairtv' do
  use_frameworks!
  inhibit_all_warnings!
  pod 'FirebaseAnalytics'
  pod 'FirebaseMessaging'
  pod 'FirebaseCrashlytics'
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'
  pod 'Google-Mobile-Ads-SDK'
  pod 'FacebookSDK'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end
