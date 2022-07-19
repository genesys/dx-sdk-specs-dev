#===================================================================================================
# Copyright © 2021 GenesysCloudBold(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloudBold'
  s.version = '3.0.1'
  s.summary = 'GenesysCloudBold is an SDK that used as chat handler for bold API.'

  s.description      = <<-DESC
  GenesysCloudBold is an SDK that used as chat handler for bold API.
  DESC

  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloudBold by GenesysBold360'
  s.source = {
  "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudBold/GenesysCloudBold_version_v3.0.1.rc1_commit_242f70f669be94830a4fd82f7d30537343cc1d8e.zip"
  }
  
  s.vendored_frameworks = 'GenesysCloudBold.framework'
  s.requires_arc = true
  s.ios.deployment_target  = '10.0'
  s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
  s.libraries = ['icucore']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  # Private Pod frameworks dependency
  s.dependency 'GenesysCloudCore', '4.0.3'
  s.swift_version = '5.0'

end
