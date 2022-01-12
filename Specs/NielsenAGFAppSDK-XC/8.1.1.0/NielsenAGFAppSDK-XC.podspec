Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework for AGF.'
    s.ios.frameworks      = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation', 'JavaScriptCore', 'WebKit', 'SystemConfiguration', 'AVFoundation'
    s.tvos.frameworks     = 'AdSupport', 'AppTrackingTransparency', 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2020 Nielsen', :type => 'Copyright' }
    s.ios.deployment_target  = '9.0'
    s.tvos.deployment_target = '9.0'
    s.name                = 'NielsenAGFAppSDK-XC'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build_xc_patch.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios/patch/XC/AGF/NielsenAGFAppSDK-8.1.1.0.zip' }
    s.summary             = 'Nielsen AGF App SDK.'
    s.vendored_frameworks = 'NielsenAppApi.xcframework'
    s.static_framework    = true
    s.version             = '8.1.1.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build_xc_patch.sh"
"${PODS_TARGET_SRCROOT}"/pod_build_xc_patch.sh',
            :execution_position => :before_compile
        }
    ]
end
