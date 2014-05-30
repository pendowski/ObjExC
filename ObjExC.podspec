Pod::Spec.new do |s|
  s.name         = 'ObjExC'
  s.version      = '0.1'
  s.license      = { :type => 'Apache' }
  s.homepage     = 'http://github.com/pendowski/ObjExC'
  s.authors      = { 'Jaroslaw Pendowski' => 'jarek@pendowski.com' }
  s.summary      = 'Set of extensions to Objective-C (categories) to improve development work.'
  s.source       =  :git => 'https://github.com/pendowski/ObjExC.git', :tag => 'v0.1'
  s.source_files = 'Categories/NSObject-ObjExC.{h,m}'
  s.requires_arc = false
end