Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework for AGF with no AdSupport.'
    s.frameworks          = 'AdSupport', 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2018 Nielsen', :type => 'Copyright' }
    s.platform            = :tvos, '9.0'
    s.name                = 'NielsenAGFNoAdTVOSAppSDK'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios/master/tvOS/AGFNoAd/NielsenAGFNoAdTVOSAppSDK-6.1.0.1.zip' }
    s.summary             = 'Nielsen AGF No Ad TVOS App SDK.'
    s.vendored_frameworks = 'NielsenTVAppApi.framework'
    s.version             = '6.1.0.1'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build.sh"
POD_BUILD="${PODS_TARGET_SRCROOT}/pod_build.sh"
$POD_BUILD',
            :execution_position => :before_compile
        }
    ]
end
