Pod::Spec.new do |s|

  s.name         = "ObjExC"
  s.version      = "0.1.1"
  s.summary      = "Useful categories of Foundation/Cocoa classes."

  s.homepage     = "https://github.com/pendowski/ObjExC"
  s.license      = "Apache"

  s.author             = { "Jarek Pendowski" => "jarek@pendowski.com" }
  s.social_media_url   = "http://twitter.com/iloveshw"

  s.source       = { :git => "https://github.com/pendowski/ObjExC.git", :tag => "v0.1.1" }

  s.source_files  = "Categories/NSObject+ObjExC.{h,m}"

  s.platform     = :ios, "4.0"
  s.requires_arc = false

end
