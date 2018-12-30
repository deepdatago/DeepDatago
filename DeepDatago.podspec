Pod::Spec.new do |s|
  s.name            = "DeepDatago"
  s.version         = "1.0.0"
  s.summary         = "DeepDatago is a wrapper for crypto tools and server interaction tools at deepdatago.com."
  s.author          = "DeepDatago <deepdatago@gmail.com>"

  s.homepage        = "https://dev.deepdatago.com"
  s.license = { :type => 'LGPL', :file => 'LICENSE' }
  s.source          = { :git => "https://github.com/deepdatago/deepdatago.git", :tag => s.version.to_s }

  s.ios.deployment_target = "8.0"
  s.ios.source_files = "DeepDatago/**/*.{h,m,swift}"
  s.ios.xcconfig = { 'HEADER_SEARCH_PATHS' => '', 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/workaround/** $(PODS_ROOT)/Carthage/Build/iOS' }
  s.osx.frameworks = 'Security', 'RNCryptor'

  s.public_header_files = "DeepDatago/**/*.h"
  s.requires_arc = true

end
