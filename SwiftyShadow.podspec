#
#  Be sure to run `pod spec lint SwiftyShadow.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SwiftyShadow"
  s.version      = "1.6.0"
  s.summary      = "Shadow for UIView in Swift iOS"
  s.description  = <<-DESC
                  Simple and highly shadow for UIView in Swift iOS
                  DESC

  s.homepage     = "https://github.com/noblakit01/SwiftyShadow"
  s.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "noblakit" => "noblakit01@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.platform     = :ios, "8.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/noblakit01/SwiftyShadow.git", :tag => s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "Sources/*.swift"
  s.requires_arc = true
  s.swift_version = "4.0"

end
