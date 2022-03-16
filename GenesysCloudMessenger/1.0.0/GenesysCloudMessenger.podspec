#===================================================================================================
# Copyright © 2021 GenesysCloudBold(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloudMessenger'
  s.version = '1.0.0'
  s.summary = 'GenesysCloudMessenger is an SDK that used as chat handler for bold API.'

  s.description      = <<-DESC
  GenesysCloudMessenger is an SDK that used as chat handler for bold API.
  DESC

  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloudMessenger by GenesysBold360'
  s.source = {
  "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloudMessenger/GenesysCloudMessenger_version_v1.0.0.rc2_commit_3158e0453573177d0044246a5f2470da1648ecbb.zip"
  }
  
  s.vendored_frameworks = 'GenesysCloudMessenger.framework'
  s.requires_arc = true
  s.ios.deployment_target  = '11.0'
  s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
  s.libraries = ['icucore']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # Private Pod frameworks dependency
  s.dependency 'GenesysCloudCore', '4.0.1'
  s.dependency 'GenesysCloudMessengerTransport'

end