#===================================================================================================
# Copyright © 2021 GenesysCloudAccessibility(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudAccessibility'
    s.version = '2.1.1'
    s.summary          = 'GenesysCloudAccessibility is an SDK that contains accessibility features.'

    s.description      = <<-DESC
    GenesysCloudAccessibility is an SDK that contains accessibility features.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudAccessibility by GenesysBold360'
    s.source = {
        "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudAccessibility/GenesysCloudAccessibility_version_v2.1.1.rc2.xcframework.zip"
    }
    s.vendored_frameworks = 'GenesysCloudAccessibility.xcframework'
    s.requires_arc = true
    #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    #s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.ios.deployment_target  = '10.0'
    s.swift_version = '5.0'
end
