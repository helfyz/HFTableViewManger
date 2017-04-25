#
#  Be sure to run `pod spec lint HFTableViewManger.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
s.name                  = "HFTableViewManger"
s.version               = "0.0.1"
s.summary               = "简化Tablview的使用"

s.description           = <<-DESC
    简化Tablview的使用，
DESC

    s.homepage              = "https://github.com/helfyz/HFTableViewManger"
    s.license               = 'MIT'
    s.author                = { "helfy" => "562812743@qq.com" }
    s.ios.deployment_target = '7.0'
    s.source                = { :git => "https://github.com/helfyz/HFTableViewManger.git", :tag => s.version, :submodules => true}
    s.frameworks            = 'Foundation', 'CoreGraphics', 'UIKit'
    s.requires_arc          = true
    s.source_files        = "HFTableViewManger/Classes/**/*.{h,m}"
    s.public_header_files = "HFTableViewManger/Classes/**/*.h"

    s.dependency "UITableView+FDTemplateLayoutCell"

end
