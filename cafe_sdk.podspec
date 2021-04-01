#
# Be sure to run `pod lib lint cafe_sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'cafe_sdk'
  s.version          = '0.1.0'
  s.summary          = '韩国咖啡社区SDK封装，支持Swift.'

  s.description      = <<-DESC
                        韩国咖啡社区SDK封装，支持Swift
                       DESC

  s.homepage         = 'https://github.com/xhp281/cafe_sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xhp281' => 'xhp281@gmail.com' }
  s.source           = { :git => 'https://github.com/xhp281/cafe_sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  # 源文件 包含 h,m
  s.source_files = 'cafe_sdk/Classes/**/*'
  # 资源文件 .png/.bundle等(多个)
  # s.resource_bundles = {
  #   'cafe_sdk' =>[
  #   'cafe_sdk/Assets/NaverCafeSDK.bundle',
  #   ]
  # }
  # 头文件
  s.public_header_files = 'cafe_sdk/Classes/CafeManager.h'

  # 是否是静态库
  s.static_framework  =  true

  # 第三方非开源framework(多个)
  s.vendored_frameworks = [
    'cafe_sdk/Classes/Vendor/NaverCafeSDK.framework',
  ]

  # 链接设置 重要
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    
  # 系统动态库(多个)
  s.frameworks = 'AVKit','AVFoundation','MobileCoreServices','SystemConfiguration','MediaPlayer','CoreMedia','AssetsLibrary','Security','ImageIO','QuartzCore','WebKit','SafariServices','ReplayKit'
  
  # 第三方库
  s.dependency "naveridlogin-sdk-ios", '~> 4.1.3'   # naver登录

end
