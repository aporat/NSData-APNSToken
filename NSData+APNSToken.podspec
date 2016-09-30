Pod::Spec.new do |s|
  s.name             = "NSData+APNSToken"
  s.version          = "2.0.0"
  s.summary          = "Category for NSData that converts APNS device tokens into simple NSString Objects"
  s.homepage         = "https://github.com/aporat/NSData-APNSToken"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Adar Porat" => "adar.porat@gmail.com" }
  s.source           = { :git => "https://github.com/aporat/NSData-APNSToken.git", :tag => s.version.to_s }

  s.social_media_url = 'https://twitter.com/aporat28'

  s.ios.deployment_target = '8.0'

  s.source_files = "Source"
end
