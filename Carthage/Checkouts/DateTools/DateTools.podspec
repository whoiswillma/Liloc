Pod::Spec.new do |s|
  s.name         = 'DateTools'
  s.version      = '2.0.0'
  s.summary      = 'Dates and time made easy in Objective-c'
  s.homepage     = 'https://github.com/MatthewYork/DateTools'

  s.description  = 'DateTools was written to streamline date and time handling in Swift.'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Matthew York" => "my3681@gmail.com" }

  s.source       = { :git => "https://github.com/MatthewYork/DateTools.git",
                     :tag => "v#{s.version.to_s}" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true

  s.source_files = 'DateTools/DateTools'
  s.resources    = 'DateTools/DateTools/DateTools.bundle'
end
