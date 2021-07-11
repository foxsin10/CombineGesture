Pod::Spec.new do |s|

    s.name         = "CombineGesture"
    s.version      = "0.4.1"
    s.summary      = "convenience wrapper api when using combine and gesture"
  
    s.description  = <<-DESC
                     This repo collects some convenience wrapper api when using combine and gesture.
                     
                     DESC
  
    s.homepage     = "https://github.com/foxsin10/CombineGesture"
  
    s.license      = { :type => "MIT", :file => "LICENSE" }
  
    s.authors            = { "foxsion10" => "yzjcnn@gmail.com" }
    s.social_media_url   = "https://github.com/foxsin10"
  
    s.swift_versions = ['5.3']
  
    s.ios.deployment_target = "13.0"
  
    s.source       = { :git => "https://github.com/foxsin10/CombineGesture.git", :tag => s.version }
    s.source_files  = ["Sources/**/*.swift"]
  
    s.requires_arc = true
  end
  