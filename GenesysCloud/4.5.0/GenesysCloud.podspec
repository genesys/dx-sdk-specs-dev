#===================================================================================================
# Copyright © 2023 GenesysCloud(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloud'
  s.version = '4.5.0'
  s.summary          = 'The GenesysCloud Chat SDK.'
  s.description      = <<-DESC
    The GenesysCloud Chat SDK framework enables you to implement a fully customized Chat Window and integrate GenesysCloud with your applications more deeply.
                       DESC
  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloud by Genesys'
  s.source = {
  "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloud/GenesysCloud_version_v4.5.0.rc9_commit_8f60bbd0d8b48d79e3382b7e15d6c12ca48fb332.zip"
  }

  s.ios.deployment_target  = '13.0'
  s.static_framework = true
  s.swift_version = '5.0'

  s.subspec 'Core' do |sp|
    sp.vendored_frameworks = 'GenesysCloud.xcframework'
    sp.requires_arc = true

    # Private Pod frameworks
    sp.dependency 'GenesysCloudAccessibility', '2.2.0'
    sp.dependency 'GenesysCloudBot', '2.2.0'
    sp.dependency 'GenesysCloudBold', '3.2.0'
    sp.dependency 'GenesysCloudCore', '4.3.0'
    sp.dependency 'GenesysCloudMessenger', '1.5.0'
    sp.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
  end

s.default_subspec = 'Core'

end
