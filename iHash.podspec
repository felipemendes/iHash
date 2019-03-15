Pod::Spec.new do |spec|

  spec.name         = "iHash"
  spec.version      = "0.0.1"
  spec.summary      = "Lib that generates hash values"

  spec.description  = <<-DESC
A CocoaPods library that generates hash values
                   DESC

  spec.homepage     = "https://github.com/felipemendes/iHash"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "felipemendes" => "felipemendes@me.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/felipemendes/iHash.git", :tag => "#{spec.version}" }
  spec.source_files  = "iHash/**/*.{h,m,swift}"

end