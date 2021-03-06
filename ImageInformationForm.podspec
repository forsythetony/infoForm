Pod::Spec.new do |s|

  s.name         = "ImageInformationForm"
  s.version      = "1.3"
  s.summary      = "This is a short description"

  s.homepage     = "https://github.com/forsythetony/infoForm.git"

  s.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }

  s.author             = { "forsythetony" => "forsythetony@gmail.com" }
  
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/forsythetony/infoForm.git", :tag => "1.3" }

  s.source_files  = "FormClasses ", "imageFormPod/FormClasses/**/*.{h,m}"

  s.resources = ["imageFormPod/FormClasses/**/*.xib"]
  s.requires_arc = true

  s.dependency 'Colours'
  s.dependency 'pop', '~> 1.0'
end
