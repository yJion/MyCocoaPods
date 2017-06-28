Pod::Spec.new do |s|
  s.name = "AlienTabBar"
  s.version = "0.0.2"
  s.summary = "\u{8fd9}\u{662f}\u{4e00}\u{4e2a}iOS\u{7684}AlienTabBarSDK."
  s.license = "MIT"
  s.authors = {"yJion"=>"alienvvip@163.com"}
  s.homepage = "https://github.com/yJion/MyCocoaPods"
  s.frameworks = ["UIKit", "Foundation"]
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/AlienTabBar.framework'
end
