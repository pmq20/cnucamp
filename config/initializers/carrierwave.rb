# CarrierWave.configure do |config|
#   config.storage = :upyun
#   config.upyun_username = Setting.upyun_username
#   config.upyun_password = Setting.upyun_password
#   config.upyun_bucket = Setting.upyun_bucket
#   config.upyun_bucket_domain = Setting.upload_url.gsub("http://","")
# end


CarrierWave.configure do |config|
  config.storage = :grid_fs
  config.grid_fs_connection = Mongoid.database
  config.grid_fs_access_url = Setting.upload_url
end
