#===================================================================================================
# Copyright © 2021 GenesysCloudCore(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
    s.name             = 'GenesysCloudCore'
    s.version = '4.0.0'
    s.summary          = 'GenesysCloudCore.'

    s.description      = <<-DESC
    GenesysCloudCore
    DESC

    s.homepage         = 'https://docs.genesys.com/Documentation'
    s.license = 'Apache License, Version 2.0'
    s.author           = 'GenesysCloudCore by Genesys'
    s.source = {
        "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/ios/dev/GenesysCloudCore/GenesysCloudCore_version_v4.0.0.rc1_commit_5566424b979396a4d6438c394e778b8a88f84eb6.zip"
    }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.vendored_frameworks = 'GenesysCloudCore.framework'
    s.requires_arc = true
    s.ios.deployment_target  = '10.0'

end