Pod::Spec.new do |s|
  s.name         = "QLMineModel"
  s.version      = "0.0.1"
  s.summary      = "QLMineModel趣浪我的"

  s.homepage     = "https://github.com/aliang124/QLMineModel"

  s.license      = "MIT"
  s.author             = { "jienliang000" => "jienliang000@163.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/aliang124/QLMineModel.git", :tag => "#{s.version}" }
  s.source_files  = "QLMineModel/*.{h,m}"

  s.subspec 'Cell' do |ss|
  ss.source_files = 'QLMineModel/Cell/**/*.{h,m,c,mm}'
  end

end
