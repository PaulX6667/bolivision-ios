
platform :ios, '13.0'
use_frameworks!
# use_modular_headers!
project 'bolivision-ios.xcodeproj'

target 'bolivisionairtv' do
  inhibit_all_warnings!

  # Firebase Core & dependencias
  pod 'Firebase/Core', '~> 10.0'
  pod 'Firebase/Analytics'
  pod 'Firebase/Messaging'
  pod 'Firebase/Crashlytics'
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'

  # Google Ads
  pod 'Google-Mobile-Ads-SDK', '~> 10.12'

  # Facebook SDK
  pod 'FacebookCore'
  pod 'FacebookLogin'
  pod 'FacebookShare'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end
