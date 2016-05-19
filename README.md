[![Build Status](https://travis-ci.org/aporat/NSData+APNSToken.svg?branch=master)](https://travis-ci.org/aporat/NSData+APNSToken) &nbsp;
![](http://cocoapod-badges.herokuapp.com/v/NSData+APNSToken/badge.png) &nbsp; ![](http://cocoapod-badges.herokuapp.com/p/NSData+APNSToken/badge.png)

NSData+APNSToken adds apns device token method to NSData.

## Use it

Copy the NSData+APNSToken class into your project or add this line to your [Podfile](http://cocoapods.org/):

```ruby
pod 'NSData+APNSToken', '~> 1.0.0'
```

## Quick API overview

Import the the category class you need:

```objective-c
@import NSData_APNSToken
```

After that you can get the apns token as a string from your app delegate:

```objective-c
- (void)application:(UIApplication * )application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {

  NSString *deviceToken = [deviceToken APNSToken];
}
```

## Feedback are welcome

Please fill an issue for any feedback or if you missed any other convenience method.
