Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework for AGF with no AdSupport.'
    s.frameworks          = 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2018 Nielsen', :type => 'Copyright' }
    s.platform            = :tvos, '9.0'
    s.name                = 'NielsenAGFNoAdTVOSAppSDK'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build_patch.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios/patch/tvOS/AGFNoAd/NielsenAGFNoAdTVOSAppSDK-8.1.1.0.zip' }
    s.summary             = 'Nielsen AGF No Ad TVOS App SDK.'
    s.vendored_frameworks = 'NielsenTVAppApi.framework'
    s.static_framework    = true
    s.version             = '8.1.1.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build_patch.sh"
"${PODS_TARGET_SRCROOT}"/pod_build_patch.sh',
            :execution_position => :before_compile
        }
    ]
end
