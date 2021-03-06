#
# Be sure to run `pod lib lint KPengUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KPengUtils'
  s.version          = '0.0.1'
  s.summary          = 'KPengUtils comm user'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  utils 
                       DESC

  s.homepage         = 'https://github.com/smithgoo/KPengUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '294336370@qq.com' => '294336370@qq.com' }
  s.source           = { :git => 'https://github.com/smithgoo/KPengUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.public_header_files = 'KPengUtils/KPengUtils.h'
    s.source_files = 'KPengUtils/KPengUtils.h'

pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
#define TARGET_OS_IOS TARGET_OS_IPHONE
#endif
#ifndef TARGET_OS_WATCH
#define TARGET_OS_WATCH 0
#endif
#ifndef TARGET_OS_TV
#define TARGET_OS_TV 0
#endif
EOS
s.prefix_header_contents = pch_AF

    s.ios.deployment_target = '9.0'
    s.subspec 'KPengCategories' do |n|
    n.source_files = 'KPengUtils/Classes/KPengCategories/*'
    #n.dependency 'pop'
    end

    s.subspec 'KPengcodeView' do |n|
    n.source_files = 'KPengUtils/Classes/KPengcodeView/*'
    end

    s.subspec 'KPengCountDown' do |n|
    n.source_files = 'KPengUtils/Classes/KPengCountDown/*'
    end

    s.subspec 'KPengNormal' do |n|
    n.source_files = 'KPengUtils/Classes/KPengNormal/*'
    end

    s.subspec 'KPengm3u8PlayandDown' do |n|
    n.source_files = 'KPengUtils/Classes/KPengm3u8PlayandDown/*'
    end

    s.subspec 'KPengPaintView' do |n|
    n.source_files = 'KPengUtils/Classes/KPengPaintView/*'
    end

    s.subspec 'KPengSongwords' do |n|
    n.source_files = 'KPengUtils/Classes/KPengSongwords/*'
    end

    s.resource_bundles = {
        'KPengUtils' => ['KPengUtils/Assets/*.png']
    }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'MapKit'
    s.dependency   'AFNetworking', '~> 3.1.0'
end
