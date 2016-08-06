#
#  Be sure to run `pod spec lint MaterialIconsSwift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "MaterialIconsSwift"
  s.version      = "0.0.5"
  s.summary      = "Material icons font for using in swift"
  s.description  = "Material icons font for using in swift"
  s.homepage     = "https://github.com/denistrofimov/material-icons-swift"
  s.license      = "MIT"
  s.author       = { "Trofimov Denis" => "mail@denistrofimov.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/denistrofimov/material-icons-swift.git", :tag => "#{s.version}" }
  s.source_files = "MaterialIconsSwift/MaterialIcons.swift"
  s.resource = "MaterialIconsSwift/MaterialIcons-Regular.ttf"

end
