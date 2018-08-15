Pod::Spec.new do |s|
  s.name         = "GDataXMLNode"
  s.version      = "0.0.2"
  s.summary      = "GDataXMLNode"
  s.description  = <<-DESC
                    GDataXMLNode
                    DESC
  s.homepage            = 'https://github.com/denis-vashkovski/gdata-objectivec-client'
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.authors             = { 'Denis Vashkovski' => 'denis.vashkovski.vv@gmail.com' }
  s.platform     = :ios, "8.0"
  s.source       = { :git => 'https://github.com/denis-vashkovski/gdata-objectivec-client.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.subspec 'Classes' do |classes|
    classes.ios.source_files = 'Source/XMLSupport/*.{h,m}'
    classes.requires_arc = false
  end

  s.library = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
end
