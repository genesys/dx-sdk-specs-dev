#===================================================================================================
# Copyright © 2021 GenesysCloudBold(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloudMessenger'
  s.version = '1.2.0'
  s.summary = 'GenesysCloudMessenger is an SDK that used as chat handler for bold API.'

  s.description      = <<-DESC
  GenesysCloudMessenger is an SDK that used as chat handler for bold API.
  DESC

  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloudMessenger by GenesysBold360'
  s.source = {
  "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudMessenger/GenesysCloudMessenger_version_v1.2.0.rc2_commit_4fab97d810c9d5fa16eec1257ddf17d56dbc7df8.zip"
  }
  
  s.vendored_frameworks = 'GenesysCloudMessenger.framework'
  s.requires_arc = true
  s.ios.deployment_target  = '13.0'
  s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
  s.libraries = ['icucore']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # Private Pod frameworks dependency
  s.dependency 'GenesysCloudCore', '4.1.0'
  s.dependency 'GenesysCloudMessengerTransport', '1.2.2'
  s.swift_version = '5.0'

end
