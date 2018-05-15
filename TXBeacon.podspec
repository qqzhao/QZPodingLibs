#
#  Be sure to run `pod spec lint Util.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "TXBeacon"
  s.version      = "0.0.2"
  s.summary      = "A short description of util. by ab. c."
  s.description  = "this is the description by myself."
  s.homepage     = "http://EXAMPLE/util"
  s.license      = "MIT (please write it as soon as possable)"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.author             = { "qqzhao2010@gmail.com" => "qqzhao2010@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "8.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "http://github.com/qqzhao/QZPodingLibs.git", :tag => "#{s.version}" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "#{s.name}/Main/"
  s.exclude_files = "Exclude"
  # s.public_header_files = "Classes/**/*.h"
  
  #s.ios.vendored_frameworks = "#{s.name}/libcxx/*.framework"
  #s.ios.preserve_paths = '#{s.name}/libcxx/*.framework' #BeaconAPI_Base
  #s.frameworks = "BeaconAPI_Base"

  # ――― Base sub 基础统计功能―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Base' do |base|
      base.source_files = "#{s.name}/libcxx/BeaconAPI_Base.framework/**/*.h"
      #base.public_header_files = "#{s.name}/libcxx/BeaconAPI_Base.framework/**/*.h"
      
      base.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreMotion', 'AdSupport', 'Security'
      base.libraries = 'c++', 'z', 'icucore', 'sqlite3'
      base.ios.vendored_frameworks = "#{s.name}/libcxx/BeaconAPI_Base.framework"
  end
  
  # ――― Log上报功能―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Log' do |log|
    log.source_files = "#{s.name}/libcxx/BeaconAPI_Log.framework/**/*.h"
    log.ios.vendored_frameworks = "#{s.name}/libcxx/BeaconAPI_Log.framework"
    log.dependency "#{s.name}/Base"
  end
  
  # ――― 网络测速功能 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Speed' do |speed|
    speed.source_files = "#{s.name}/libcxx/BeaconAPI_Speed.framework/**/*.h"
    speed.ios.vendored_frameworks = "#{s.name}/libcxx/BeaconAPI_Speed.framework"
    speed.dependency "#{s.name}/Base"
  end
  
  # ――― 动态埋点功能 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Track' do |track|
    track.source_files = "#{s.name}/libcxx/BeaconAPI_Track.framework/**/*.h"
    track.ios.vendored_frameworks = "#{s.name}/libcxx/BeaconAPI_Track.framework"
    track.dependency "#{s.name}/Base"
  end

  # ――― 渠道稽核功能 ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Audit' do |audit|
    audit.source_files = "#{s.name}/libcxx/BeaconAPI_Audit.framework/**/*.h"
    audit.ios.vendored_frameworks = "#{s.name}/libcxx/BeaconAPI_Audit.framework"
    audit.dependency "#{s.name}/Base"
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }

  #s.xcconfig = { "SWIFT_LANGUAGE_VERSION" => "Swift 4.1" } # 不起作用

  # s.dependency "Toaster", "~> 2.1.1"

end
