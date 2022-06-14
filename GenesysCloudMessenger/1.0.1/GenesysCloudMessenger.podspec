#===================================================================================================
# Copyright © 2021 GenesysCloudBold(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloudMessenger'
  s.version = '1.0.1'
  s.summary = 'GenesysCloudMessenger is an SDK that used as chat handler for bold API.'

  s.description      = <<-DESC
  GenesysCloudMessenger is an SDK that used as chat handler for bold API.
  DESC

  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloudMessenger by GenesysBold360'
  s.source = {
  "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudMessenger/GenesysCloudMessenger_version_v1.0.1.rc5_commit_18140b970e28445a2fdc514af93ed1b113c72b3f.zip"
  }
  
  s.vendored_frameworks = 'GenesysCloudMessenger.framework'
  s.requires_arc = true
  s.ios.deployment_target  = '11.0'
  s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
  s.libraries = ['icucore']
  # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # Private Pod frameworks dependency
  s.dependency 'GenesysCloudCore', '4.0.2'
  s.dependency 'GenesysCloudMessengerTransport'
  s.swift_version = '5.0'

end