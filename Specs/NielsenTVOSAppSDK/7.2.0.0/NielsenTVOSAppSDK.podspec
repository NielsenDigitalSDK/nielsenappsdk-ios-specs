Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework.'
    s.frameworks          = 'AdSupport', 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2019 Nielsen', :type => 'Copyright' }
    s.platform            = :tvos, '9.0'
    s.name                = 'NielsenTVOSAppSDK'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios/master/tvOS/Global/NielsenTVOSAppSDK-7.2.0.0.zip' }
    s.summary             = 'Nielsen TVOS App SDK.'
    s.vendored_frameworks = 'NielsenTVAppApi.framework'
    s.static_framework    = true
    s.version             = '7.2.0.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build.sh"
"${PODS_TARGET_SRCROOT}"/pod_build.sh',
            :execution_position => :before_compile
        }
    ]
end
