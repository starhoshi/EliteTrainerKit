Pod::Spec.new do |s|
  s.name               = "EliteTrainerKit"
  s.version            = "0.1.0"
  s.summary            = "Pokemon Go utility library for Swift."
  s.homepage           = "https://github.com/starhoshi/EliteTrainerKit"
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "star__hoshi" => "kensuke1751@gmail.com" }
  s.social_media_url   = "https://twitter.com/star__hoshi"
  s.platform           = :ios, "9.0"
  s.source             = { :git => "https://github.com/starhoshi/EliteTrainerKit.git", :tag => "#{s.version}" }
  s.source_files       = "EliteTrainerKit/**/*.swift"
end

