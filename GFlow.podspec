Pod::Spec.new do |s|
  s.name             = 'GFlow'
  s.version          = '1.0.0'
  s.summary          = 'A lightweight flow management library for iOS.'
  s.description      = <<-DESC
                         A simple library for managing state transitions in iOS applications.
                         It provides protocols and classes for defining and controlling finite flows with outputs.
                       DESC
  s.homepage         = 'https://github.com/lynx56/Flow'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gulnaz Almukhametova' => 'lynx56reg@gmail.com' }
  s.source           = { :git => 'https://github.com/lynx56/Flow.git', :tag => '1.0.0' }
  s.platform         = :ios, '10.0'
  s.source_files     = 'Sources/Flow/**/*.{swift}'
  s.requires_arc     = true

  # Specify Swift version
  s.swift_versions = ['5.0']
end
