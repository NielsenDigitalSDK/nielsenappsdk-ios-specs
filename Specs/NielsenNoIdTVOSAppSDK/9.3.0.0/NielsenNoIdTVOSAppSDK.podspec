Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework with no Id.'
    s.frameworks          = 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2020 Nielsen', :type => 'Copyright' }
    s.platform            = :tvos, '12.0'
    s.name                = 'NielsenNoIdTVOSAppSDK'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios/master/tvOS/GlobalNoId/NielsenNoIdTVOSAppSDK-9.3.0.0.zip' }
    s.summary             = 'Nielsen No Id TVOS App SDK.'
    s.vendored_frameworks = 'NielsenTVAppApi.framework'
    s.static_framework    = true
    s.version             = '9.3.0.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build.sh"
"${PODS_TARGET_SRCROOT}"/pod_build.sh',
            :execution_position => :before_compile
        }
    ]
end
