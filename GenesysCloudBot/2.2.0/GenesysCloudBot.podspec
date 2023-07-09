#===================================================================================================
# Copyright © 2023 GenesysCloudBot(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudBot'
    s.version          = '2.2.0'
    s.summary          = 'GenesysCloudBot is an SDK that contains Search & Conversation.'

    s.description      = <<-DESC
    GenesysCloudBot is an SDK that contains Search & Conversation.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudBot by Genesys'
    s.source = {
        "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudBot/GenesysCloudBot_version_v2.2.0.rc1_commit_aa4fcbdce04d90e59b57287a1151f246c09a3a84.zip"
    }
    s.vendored_frameworks = 'GenesysCloudBot.xcframework'
    s.requires_arc = true
    s.ios.deployment_target  = '11.0'
    # Private Pod frameworks dependency
    s.dependency 'GenesysCloudCore', '4.3.0'
    s.swift_version = '5.0'
end