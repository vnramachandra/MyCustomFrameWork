Pod::Spec.new do |s|

  s.name         = "MyCustomFrameWork"
  s.version="1.0.0"
  s.summary      = "Test framework."

  s.description  = <<-DESC
                    My test framework
                   DESC

  s.homepage     = "http://pyze.com"

  # Licence documenting goes here
  s.license = {
    :type => 'Commercial',
    :text => <<-LICENSE
    Copyright (c) 2013-2016, Pyze Technologies.
    All rights reserved.
    LICENSE
    }

  s.author       = { "iOS Dev team" => "ios@pyze.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/vnramachandra/MyCustomFrameWork-Library.git", :tag => "v1.0.0" }

  # The product of the vendor
  s.ios.vendored_frameworks = 'MyCustomFrameWork.framework'

  s.frameworks = 'CoreTelephony','SystemConfiguration'

  s.ios.exclude_files = '.git', '.gitignore'

  s.xcconfig = {'OTHER_LDFLAGS' => "-ObjC"}

end
