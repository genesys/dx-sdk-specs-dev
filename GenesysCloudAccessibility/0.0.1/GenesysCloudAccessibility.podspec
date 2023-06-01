#===================================================================================================
# Copyright © 2023 GenesysCloudAccessibility(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudAccessibility'
    s.version          = '0.0.1'
    s.summary          = 'GenesysCloudAccessibility is an SDK that contains accessibility features.'

    s.description      = <<-DESC
    GenesysCloudAccessibility is an SDK that contains accessibility features.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudAccessibility by GenesysBold360'
    s.source = {
        "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudAccessibility/GenesysCloudAccessibility_version_v0.0.1.rc12_commit_0496645e6c9ea16ecfbfbffebecc52119ef8092a.zip"
    }
    s.vendored_frameworks = 'GenesysCloudAccessibility.xcframework'
    s.requires_arc = true
    s.ios.deployment_target  = '13.0'
    s.dependency 'GenesysCloudMessengerTransport2', '2.3.2'
    s.swift_version = '5.0'
end
