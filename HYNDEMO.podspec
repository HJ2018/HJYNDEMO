#
# Be sure to run `pod lib lint HYNDEMO.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYNDEMO'
  s.version          = '1.2.4'
  s.summary          = 'HYNDEMO.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
HYNDEMO.分类使用很方便
                       DESC

  s.homepage         = 'https://github.com/HJ2018/HJYNDEMO'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HJ2018' => '597079127@qq.com' }
  s.source           = { :git => 'https://github.com/HJ2018/HJYNDEMO.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'HYNDEMO/Classes/**/*'
  
  s.subspec 'Base' do |b|
      b.source_files = 'HYNDEMO/Classes/Base/**/*'
  end
  
  s.subspec 'Category' do |c|
      c.source_files = 'HYNDEMO/Classes/Category/**/*'
  end
  
  s.subspec 'Network' do |n|
      
      n.source_files = 'HYNDEMO/Classes/Network/**/*'
      
      n.dependency 'AFNetworking'
      n.dependency 'SDWebImage'
      
      
  end
  
  s.subspec 'Tool' do |t|
      t.source_files = 'HYNDEMO/Classes/Tool/**/*'
      
      
  end
  
  # s.resource_bundles = {
  #   'HYNDEMO' => ['HYNDEMO/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
