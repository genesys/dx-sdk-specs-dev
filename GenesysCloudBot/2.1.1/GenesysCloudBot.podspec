#===================================================================================================
# Copyright © 2023 GenesysCloudBot(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudBot'
    s.version          = '2.1.1'
    s.summary          = 'GenesysCloudBot is an SDK that contains Search & Conversation.'

    s.description      = <<-DESC
    GenesysCloudBot is an SDK that contains Search & Conversation.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudBot by Genesys'
    s.source = {
        "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloudBot/GenesysCloudBot_version_v2.1.1.rc4_commit_dd14a8127af4a35495c65fb83d4e5885d9c2fd0d.zip"
    }
    s.vendored_frameworks = 'GenesysCloudBot.xcframework'
    s.requires_arc = true
    s.ios.deployment_target  = '11.0'
    # Private Pod frameworks dependency
    s.dependency 'GenesysCloudCore', '4.2.0'
    s.swift_version = '5.0'
end