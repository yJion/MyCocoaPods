
Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "AlienTabBar"
  s.version      = "0.0.1"
  s.summary      = "这是一个iOS的AlienTabBarSDK."
  s.homepage     = "https://github.com/yJion/MyCocoaPods"
  s.license      = "MIT"
  s.author             = { "yJion" => "alienvvip@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/yJion/MyCocoaPods.git", :tag => "0.0.1" }
  s.source_files  = 'navigation/*.{h,m}'
  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true

end
