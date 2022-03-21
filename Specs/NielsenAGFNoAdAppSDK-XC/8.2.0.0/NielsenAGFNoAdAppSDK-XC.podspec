Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework for AGF with no AdSupport.'
    s.ios.frameworks      = 'CoreLocation', 'JavaScriptCore', 'WebKit', 'SystemConfiguration', 'AVFoundation'
    s.tvos.frameworks     = 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2018 Nielsen', :type => 'Copyright' }
    s.ios.deployment_target  = '9.0'
    s.tvos.deployment_target = '9.0'
    s.name                = 'NielsenAGFNoAdAppSDK-XC'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build_xc.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios/master/XC/AGFNoAd/NielsenAGFNoAdAppSDK-8.2.0.0.zip' }
    s.summary             = 'Nielsen AGF No Ad App SDK.'
    s.vendored_frameworks = 'NielsenAppApi.xcframework'
    s.static_framework    = true
    s.version             = '8.2.0.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build_xc.sh"
"${PODS_TARGET_SRCROOT}"/pod_build_xc.sh',
            :execution_position => :before_compile
        }
    ]
end
