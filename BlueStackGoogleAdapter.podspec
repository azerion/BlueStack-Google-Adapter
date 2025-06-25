Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackGoogleAdapter'
s.version = '5.1.4.1'
s.static_framework = true
s.license = 'MIT'
s.platform = :ios, '13.0'
s.summary = 'BlueStack Google mediation adapter'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'
s.source_files = ["BlueStackGoogleAdapter.xcframework/*/*/Headers/*.{h,m,swift}"]

s.source = { :git => 'https://github.com/azerion/BlueStack-Google-Adapter.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation/primairy/supported-networks#google-mobile-ads'
s.vendored_frameworks = "BlueStackGoogleAdapter.xcframework"
s.ios.deployment_target = '13.0'

s.dependency 'BlueStack-SDK', '>=5.1.1'
s.dependency 'Google-Mobile-Ads-SDK', '>= 11.13.0', '< 12.0.0'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}
  
end
  
