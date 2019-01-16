Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "GAReporter"
s.summary = "Google Analytics Wrapper"
s.requires_arc = true

# 2
s.version = "0.0.1"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "David Wu" => "ji3g4kami@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/ji3g4kami/GAReporter"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/ji3g4kami/GAReporter.git", 
             :tag => "#{s.version}" }

# 7 - Frameworks, libraries and dependencies
s.vendored_libraries = "GAReporter/Libraries/*.a"
s.frameworks = ['CoreData', 'SystemConfiguration', 'AdSupport']
s.libraries = ['z', 'sqlite3']

# 8
s.source_files = "GAReporter/**/*.swift", "GAReporter/*"

# 10
s.swift_version = "4.1"

s.preserve_path = 'GAReporter/module.modulemap'

s.module_map = 'GAReporter/module.modulemap'

s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/GAReporter/**/*.swift', 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/GAReporter', 'DEFINES_MODULE' => 'YES' }

s.xcconfig = {  'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/GAReporter/**/*.swift', 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/GAReporter' }

s.static_framework = true
end
