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
  s.author           = { '294336370@qq.com' => '295336370@qq.com' }
  s.source           = { :git => 'https://github.com/smithgoo/KPengUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'KPengUtils/Classes/**/*'
    s.subspec 'Categories' do |n|
    n.source_files = 'KPengUtils/Classes/Categories/*'
    #n.dependency 'pop'
    end

    s.subspec 'codeView' do |n|
    n.source_files = 'KPengUtils/Classes/codeView/*'
    end

    s.subspec 'CountDown' do |n|
    n.source_files = 'KPengUtils/Classes/CountDown/*'
    end

    s.subspec 'KPengNormal' do |n|
    n.source_files = 'KPengUtils/Classes/KPengNormal/*'
    end

    s.subspec 'm3u8PlayandDown' do |n|
    n.source_files = 'KPengUtils/Classes/m3u8PlayandDown/*'
    end

    s.subspec 'PaintView' do |n|
    n.source_files = 'KPengUtils/Classes/PaintView/*'
    end

    s.subspec 'SongList' do |n|
    n.source_files = 'KPengUtils/Classes/SongList/*'
    end

    s.resource_bundles = {
        'KPengUtils' => ['KPengUtils/Assets/*.png']
    }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'MapKit'
    s.dependency   'AFNetworking', '~> 3.1.0'
end
