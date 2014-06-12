NSData+APNSToken adds apns device token method to NSData.

## Use it

Copy the NSData+APNSToken class into your project or add this line to your [Podfile](http://cocoapods.org/):

	pod 'NSData+APNSToken', '~> 1.0.0'

## Quick API overview

Import the the category class you need:

	#import <NSData+APNSToken>

After that you can call `APNSToken`.

- (void)application:(UIApplication* )application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {

  NSString* deviceToken = [deviceToken APNSToken];
}


## Feedback are welcome

Please fill an issue for any feedback or if you missed any other convenience method.
