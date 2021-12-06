#===================================================================================================
# Copyright © 2021 GenesysCloud(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloud'
  s.version = '4.0.0'
  s.summary          = 'The GenesysCloud Chat SDK.'
  s.description      = <<-DESC
    The GenesysCloud Chat SDK framework enables you to implement a fully customized Chat Window and integrate GenesysCloud with your applications more deeply.
                       DESC
  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloud by Genesys'
  s.source = {
  "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloud/GenesysCloud_version_v4.0.0.rc3_commit_bc9cace0e2669f1c09fde119c03ce79f954744b4.zip"
  }

  s.ios.deployment_target  = '11.0'
  s.static_framework = true

  s.subspec 'Core' do |sp|
  sp.vendored_frameworks = 'GenesysCloud.framework'
  sp.requires_arc = true

  # Private Pod frameworks
  sp.dependency 'GenesysCloudAccessibility', '2.0.0'
  sp.dependency 'GenesysCloudBot', '2.0.0'
  sp.dependency 'GenesysCloudBold', '3.0.0'
  # sp.dependency  'MessengerTransport'
  sp.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
  sp.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end

s.default_subspec = 'Core'

end
