#===================================================================================================
# Copyright © 2021 GenesysCloudBot(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudBot'
    s.version = '2.0.1'
    s.summary          = 'GenesysCloudBot is an SDK that contains Search & Conversation.'

    s.description      = <<-DESC
    GenesysCloudBot is an SDK that contains Search & Conversation.
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license          = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudBot by Genesys'
    s.source = {
        "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloudBot/GenesysCloudBot_version_v2.0.1.rc1_commit_935ee08c7e9f8a5f66124f813dd84c7b716f0c98.zip"
    }
    s.vendored_frameworks = 'GenesysCloudBot.framework'
    s.requires_arc = true
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.ios.deployment_target  = '10.0'
    # Private Pod frameworks dependency
    s.dependency 'GenesysCloudCore', '4.0.1'
end