#===================================================================================================
# Copyright © 2021 GenesysCloudBot(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudBot'
    s.version = '2.0.2'
    s.summary          = 'GenesysCloudBot is an SDK that contains Search & Conversation.'

    s.description      = <<-DESC
    GenesysCloudBot is an SDK that contains Search & Conversation.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudBot by Genesys'
    s.source = {
        "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudBot/GenesysCloudBot_version_v2.0.2.rc4_commit_823f55a2e759d2e62b0b7a9047e8b005ff30145d.zip"
    }
    s.vendored_frameworks = 'GenesysCloudBot.framework'
    s.requires_arc = true
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.ios.deployment_target  = '10.0'
    # Private Pod frameworks dependency
    s.dependency 'GenesysCloudCore', '4.0.3'
    s.swift_version = '5.0'
end
