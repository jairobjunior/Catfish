Pod::Spec.new do |s|
  s.name         = "Catfish"
  s.version      = "0.1.1-beta"
  s.summary      = "Catfish is a group of classes and categories useful for iOS developers"

  s.description  = <<-DESC
                   It is an open source project for iOS platform, written in Objective-C. Its goal is to help programmers with common functionalities needed daily in most projects. Basically, it is a result of refactoring on projects that I have worked on. There are utility categories for NSDate, NSException, NSString, UIAlertView, UIButton and so on. It also has class helper to execute blocks based on your current version of iOS.
                   DESC

  s.homepage     = "https://github.com/jairobjunior/Catfish"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jairo Junior" => "jairobjunior@gmail.com" }
  
  s.source       = { :git => "https://github.com/jairobjunior/Catfish.git", :tag => "0.1.1-beta" }
  s.source_files  = 'Catfish', 'Catfish/**/*.{h,m}'
  s.resources = "Catfish/Resources/*.png", "Catfish/Resources/*.bundle"

  s.requires_arc = true
  s.ios.deployment_target = '7.0'

  s.frameworks  = 'QuartzCore', 'UIKit'
  
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Catfish"' }  

end