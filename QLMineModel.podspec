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

  s.subspec 'ABoutMe' do |ss|
  ss.source_files = 'QLMineModel/ABoutMe/**/*.{h,m,c,mm}'
  end

  s.subspec 'BabyRecord' do |ss|
  ss.source_files = 'QLMineModel/BabyRecord/**/*.{h,m,c,mm}'
  end

  s.subspec 'FeedBack' do |ss|
  ss.source_files = 'QLMineModel/FeedBack/**/*.{h,m,c,mm}'
  end

  s.subspec 'Setting' do |ss|
  ss.source_files = 'QLMineModel/Setting/**/*.{h,m,c,mm}'
  end

  s.subspec 'UserInfo' do |ss|
  ss.source_files = 'QLMineModel/UserInfo/**/*.{h,m,c,mm}'
  end

  s.subspec 'GuanZhu' do |ss|
  ss.source_files = 'QLMineModel/UserInfo/**/*.{h,m,c,mm}'
  end

  s.subspec 'Funs' do |ss|
  ss.source_files = 'QLMineModel/Funs/**/*.{h,m,c,mm}'
  end

  s.subspec 'Message' do |ss|
  ss.source_files = 'QLMineModel/Message/**/*.{h,m,c,mm}'
  end

  s.subspec 'Cell' do |ss|
  ss.source_files = 'QLMineModel/Cell/**/*.{h,m,c,mm}'
  end

end
