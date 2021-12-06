
Pod::Spec.new do |s|
s.name             = 'MessengerTransport'
s.version = '0.0.6'
s.summary          = 'MessengerTransport.'

s.description      = <<-DESC
MessengerTransport
DESC

s.homepage         = ''
s.license = 'private'
s.author           = 'MessengerTransport'
s.source = {
    "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/0.0.6/MessengerTransport.xcframework.zip"
}

s.ios.deployment_target  = '11.0'

s.subspec 'Core' do |sp|
    sp.vendored_frameworks = 'MessengerTransport.xcframework'
    # sp.requires_arc = true
    sp.dependency 'jetfire', '0.1.5'
    sp.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
    sp.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end
  
s.default_subspec = 'Core'

end
