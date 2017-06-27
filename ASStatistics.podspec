#
#  Be sure to run `pod spec lint ASStatistics.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ASStatistics"
  s.version      = "1.0.0"
  s.summary      = "iOS 用户行为统计."

  s.homepage     = "https://github.com/devasan/ASStatistics"
  
  s.license      = "MIT"
  
  s.author             = { "asan" => "devasan@163.com" }
  s.social_media_url   = "http://devasan.com"

  s.platform     = :ios
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/devasan/ASStatistics.git", :tag => "1.0.0" }

  s.source_files = 'ASStatistics/ASStatistics/Statistics/*.{h,m}'

  s.requires_arc = true


end
