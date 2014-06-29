Pod::Spec.new do |s|

  s.name         = "ImageInformationForm"
  s.version      = "0.1"
  s.summary      = "This is a short description"

  s.homepage     = "https://github.com/forsythetony/infoForm.git"

  s.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }

  s.author             = { "forsythetony" => "forsythetony@gmail.com" }
  
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/forsythetony/infoForm.git", :tag => "0.1" }

  s.source_files  = "FormClasses ", "imageFormPod/FormClasses/**/*.{h,m}"

  s.requires_arc = true

  s.dependency 'Colours'

end
