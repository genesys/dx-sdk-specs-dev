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
  "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloud/GenesysCloud_version_v4.0.0.rc1_commit_1f1193464c195da785a75908dc18a2afc5c9e639.zip"
  }

  s.ios.deployment_target  = '11.0'
  s.static_framework = true

  s.subspec 'Core' do |sp|
  sp.vendored_frameworks = 'GenesysCloud.framework'
  sp.requires_arc = true

  # Private Pod frameworks
  sp.dependency 'BoldAIEngine', '1.12.1'
  sp.dependency 'BoldAIAccessibility', '1.8.0'
  sp.dependency 'BoldEngine', '2.7.0'
  # sp.dependency  'MessengerTransport'
  sp.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
  sp.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end

s.default_subspec = 'Core'

end
