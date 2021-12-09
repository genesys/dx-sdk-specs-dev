#===================================================================================================
# Copyright © 2021 GenesysCloudBold(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloudBold'
  s.version = '3.0.0'
  s.summary = 'GenesysCloudBold is an SDK that used as chat handler for bold API.'

  s.description      = <<-DESC
  GenesysCloudBold is an SDK that used as chat handler for bold API.
  DESC

  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloudBold by GenesysBold360'
  s.source = {
  "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloudBold/GenesysCloudBold_version_v3.0.0.rc7_commit_471272616793bc5432602734bced9ffbfaeb67dc.zip"
  }
  
  s.vendored_frameworks = 'GenesysCloudBold.framework'
  s.requires_arc = true
  s.ios.deployment_target  = '10.0'
  s.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO' }
  s.libraries = ['icucore']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # Private Pod frameworks dependency
  s.dependency 'GenesysCloudCore', '4.0.0'

end