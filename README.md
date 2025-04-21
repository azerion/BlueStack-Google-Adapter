BlueStack Google Mediation Adapter for iOS platform

# BlueStackGoogleAdapter

Using BlueStackGoogleAdapter you will be able to show Google ads through BlueStack SDK. 

## Supported ad formats
- Banner/MREC
- Interstitial
- Rewarded
- Native Ads

## Requirements
- Xcode 15.1
- iOS: 13

## Integrate BlueStackGoogleAdapter in your application project

### Using Cocoapods
In the `Podfile` of your application project add `BlueStackGoogleAdapter` dependency

```shell
pod 'BlueStackGoogleAdapter'
```
and run `pod install --repo-update` in you terminal.

### Using Swift Package Manager (SPM)

- Go to the project settings and select `Package Dependencies`
- Search for https://github.com/azerion/BlueStack-Google-Adapter.git and add `BlueStackGoogleAdapter` to your target.

**Note:** Add `-ObjC` to you `Other Linker Flags` of target build settings. 

### Documentation

Please visit https://developers.bluestack.app/ios/mediation/primairy/supported-networks#google-mobile-ads