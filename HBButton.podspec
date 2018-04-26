Pod::Spec.new do |s|

  s.name        = "HBButton"

  s.version      = "0.0.3"

  s.summary      = "华卓组件化Button"

  s.description  = <<-DESC

                     华卓组件化Button的代码整理

                  DESC

  s.homepage    = "https://github.com/jihuaibin2017/HBButton"

  s.license      = "MIT"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author            = { "xxxx" => "xxxxxxx@163.com" }

  s.platform    = :ios

  s.source      = { :git => "https://github.com/jihuaibin2017/HBButton.git", :tag => "0.0.3" }

  s.source_files  = "HBButton/**/*.{h,m}"

  s.requires_arc = true

end