
Pod::Spec.new do |s|
s.name             = 'MessengerTransport'
s.version = '0.0.1'
s.summary          = 'MessengerTransport.'

s.description      = <<-DESC
BoldCore
DESC

s.homepage         = ''
s.license = 'private'
s.author           = 'MessengerTransport'
s.source = {
    "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/MessengerTransport.framework.zip"
}

spec.source_files = 'MessengerTransport.framework/Versions/A/Headers/*.h'
spec.preserve_paths = 'MessengerTransport.framework'

s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
# s.static_framework = true
s.vendored_frameworks = 'Frameworks/MessengerTransport.framework'
s.ios.vendored_frameworks = 'Frameworks/MessengerTransport.framework'

s.requires_arc = true
s.ios.deployment_target  = '11.0'

end
