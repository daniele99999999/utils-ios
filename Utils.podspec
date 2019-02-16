Pod::Spec.new do |s|
  s.name             = "Utils"
  s.version          = "1.0.14"
  s.summary          = "Utils library DeeplyMadStudio"
  s.homepage         = "https://github.com/daniele99999999/utils-ios"
  s.license          = { :type => 'MIT' }
  s.author           = { "DeeplyMadStudio" => "deeplymadstudio@gmail.com" }
  s.source           = { :git => "https://github.com/daniele99999999/utils-ios", :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.frameworks   = 'Foundation', 'UIKit'

  s.dependency 'SwifterSwift', '~> 4.0'
  s.dependency 'GBDeviceInfo', '5.1.0'

  s.source_files = 'Classes/**/*'
end