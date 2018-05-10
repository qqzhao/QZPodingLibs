#
#  Be sure to run `pod spec lint Util.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "QZCommon"
  s.version      = "0.0.4"
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
  s.source_files  = "QZCommon", "*.{swift}"
  s.exclude_files = "Exclude"
  # s.public_header_files = "Classes/**/*.h"
  
  # ――― Network sub ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Base' do |base|
      base.source_files = "#{s.name}/base"
  end
  
  # ――― UI sub ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'UI' do |ui|
      ui.source_files = "#{s.name}/ui"  # 注意这里双引号
  end
  
  # ――― Network sub ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'Network' do |network|
      network.source_files = "#{s.name}/network"
  end
  
  # ――― All subs ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'All' do |all|
      all.dependency  "#{s.name}/Network"
      all.dependency  "#{s.name}/UI"
      all.dependency  "#{s.name}/Base"
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  # s.dependency "Toaster", "~> 2.1.1"

end
