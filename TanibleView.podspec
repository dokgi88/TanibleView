#
# Be sure to run `pod lib lint TanibleView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TanibleView'
  s.version          = '1.1.0'
  s.summary          = 'Very simple animate TableView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/dokgi88/TanibleView'
  s.screenshots      = 'https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/imgTitleLogo.png?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dokgi88' => 'dokgi88@gmail.com' }
  s.source           = { :git => 'https://github.com/dokgi88/TanibleView.git', :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.ios.deployment_target = '9.0'

  s.source_files = 'TanibleView/Classes/**/*'
end
