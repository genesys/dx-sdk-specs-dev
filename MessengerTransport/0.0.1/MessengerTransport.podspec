
Pod::Spec.new do |s|
s.name             = 'MessengerTransport'
s.version = '0.0.2'
s.summary          = 'MessengerTransport.'

s.description      = <<-DESC
MessengerTransport
DESC

s.homepage         = ''
s.license = 'private'
s.author           = 'MessengerTransport'
s.source = {
    "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/MessengerTransport.framework.zip"
}

s.ios.deployment_target  = '11.0'

s.subspec 'Core' do |sp|
    sp.vendored_frameworks = 'MessengerTransport.framework'
    sp.requires_arc = true
    sp.dependency 'jetfire', '~> 0.1.5'
    sp.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
    sp.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end
  
s.default_subspec = 'Core'

end
