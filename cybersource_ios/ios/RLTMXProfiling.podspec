#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'RLTMXProfiling'
  s.version          = '0.0.1'
  s.summary          = 'RLTMXProfiling'
  s.description      = <<-DESC
  An iOS implementation of the RLTMXProfiling library.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }  
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.preserve_paths = 'RLTMXProfiling.framework' 
  s.xcconfig = { 'OTHER_LDFLAGS' => -framework RLTMXProfiling }
  s.vendored_frameworks = 'RLTMXProfiling.xcframework'

  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
