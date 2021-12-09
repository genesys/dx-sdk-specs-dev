#===================================================================================================
# Copyright © 2021 GenesysCloudAccessibility(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudAccessibility'
    s.version = '2.0.0'
    s.summary          = 'GenesysCloudAccessibility is an SDK that contains accessibility features.'

    s.description      = <<-DESC
    GenesysCloudAccessibility is an SDK that contains accessibility features.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudAccessibility by GenesysBold360'
    s.source = {
        "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloudAccessibility/GenesysCloudAccessibility_version_v2.0.0.rc2_commit_957ef285d529a6832f13ddf29d38fc78175e151c.zip"
    }
    s.vendored_frameworks = 'GenesysCloudAccessibility.framework'
    s.requires_arc = true
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.ios.deployment_target  = '10.0'
end