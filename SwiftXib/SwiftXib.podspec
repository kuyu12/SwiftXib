Pod::Spec.new do |s|
  s.name             = 'SwiftXib'
  s.version          = '0.1.0'
  s.summary          = 'Xib Loader - very easy use xib loader'
 
  s.description      = <<-DESC
An Xib loader, easy and fast. All you need is to extend the SwiftXib class and you done. 
                       DESC
 
  s.homepage         = 'https://github.com/kuyu12/SwiftXib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yair Hadad' => 'kuyu12@gmail.com' }
  s.source           = { :git => 'https://github.com/kuyu12/SwiftXib.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'SwiftXib/SwiftXib/*'
 
end