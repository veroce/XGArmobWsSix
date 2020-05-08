Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '11.0'
s.name = "XGArqmobWs"
s.summary = "XGArqmobWs lets a user select an ice cream flavor."
s.requires_arc = true

# 2
s.version = "0.1.9"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Xunta de Galicia" => "oficinaweb@xunta.gal" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/veroce/XGArmobWsSix"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/veroce/XGArmobWsSix.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'AlamofireObjectMapper', '~> 5.2'

# 8
s.source_files = "XGArqmobWs/**/*.{swift}"

# 9
#s.resources = "XGArqmobWs/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "5.1"

end
