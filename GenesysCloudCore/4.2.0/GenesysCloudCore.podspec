#===================================================================================================
# Copyright © 2023 Genesys Cloud Services, Inc. All rights reserved.
# GenesysCloudCore SDK.
# All rights reserved.
#===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloudCore'
  s.version          = '4.2.0'
  s.summary          = 'GenesysCloudCore SDK'

  s.description      = <<-DESC
GenesysCloudCore SDK
                       DESC

  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'Genesys Cloud Services, Inc.'
  s.source           = { :http => 'https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudCore/GenesysCloudMessenger_version_v1.3.0.rc23_commit_30b53b1c8a462806d0d1ccd95fd0b2c3f778d6f5.zip' }
  s.vendored_frameworks = 'GenesysCloudCore.xcframework'

  s.requires_arc = true
  s.ios.deployment_target  = '11.0'
  s.swift_version = '5.0'
end
