#
# Be sure to run `pod lib lint ETWinkerField.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ETWinkerField"
  s.version          = "0.1.0"
  s.summary          = "Password visibility switch button for UITextField"
  s.description      = <<-DESC
                       You can manage your password text fields easily with ETWinkerField. It also includes custom image support for your toggle button.
                       DESC
  s.homepage         = "https://github.com/ersentekin/ETWinkerField"
  # s.screenshots     = "https://github.com/ersentekin/ETWinkerField/Resource/ss-device.png"
  s.license          = 'MIT'
  s.author           = { "Ersen Tekin" => "ersen.tekin@gmail.com" }
  s.source           = { :git => "https://github.com/ersentekin/ETWinkerField.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ersentekin'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ETWinkerField' => ['Pod/Resources/*.png']
  }

end
