#===================================================================================================
# Copyright © 2021 GenesysCloudCore(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudCore'
    s.version = '4.0.3'
    s.summary          = 'GenesysCloudCore.'

    s.description      = <<-DESC
    GenesysCloudCore
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudCore by Genesys'
    s.source = {
        "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudCore/GenesysCloudCore_version_v4.0.3.rc2_commit_0940a5bf7e22ec54e388d24877b2af59d24f3557.zip"
    }

    s.vendored_frameworks = 'GenesysCloudCore.framework'
    s.requires_arc = true
    s.ios.deployment_target  = '10.0'
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

end