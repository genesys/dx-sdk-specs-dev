# ===================================================================================================
# Copyright © 2018 bold360ai(LogMeIn).
# Bold360AI SDK.
#ֿ All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'Bold360AI'
  s.version = '0.0.1'
  s.summary          = 'GMDXSDK is an SDK that contains two main services: Conversation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Bold360AI is an SDK that contains two main services: Search & Conversation.
                       DESC

  s.homepage         = 'https://www.genesys.com/'
  s.license = ''
  s.author           = 'GMDXSDK'

    # scripts
    # s.script_phases = [
    #   { :name => 'extract-version-from-url',
    #   :script => '${PODS_TARGET_SRCROOT}/scripts/extract-version-from-url.sh ' + s.source["http"].to_s,
    #   :execution_position => :after_compile
    #   }
    # ]

s.source = {
"http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/ios/dev/Bold360AI/Bold360AI_version_v0.0.1.rc16_commit_fbd4504018a93348eb21992ea75e85cc201846e8.zip"
}

s.ios.deployment_target  = '10.0'
s.static_framework = true

s.subspec 'Core' do |sp|
  sp.vendored_frameworks = 'Bold360AI.framework'
  sp.requires_arc = true

  # Private Pod frameworks
  sp.dependency 'BoldAIEngine', '1.12.1'
  sp.dependency 'BoldAIAccessibility', '1.8.0'
  sp.dependency 'BoldEngine', '2.7.0'
  sp.dependency  'MessengerTransport'
  sp.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
  sp.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end

s.default_subspec = 'Core'

end
