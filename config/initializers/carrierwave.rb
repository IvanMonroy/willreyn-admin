#if Rails.env.production? || Rails.env.staging? || Rails.env.prestaging?
#   CarrierWave.configure do |config|
#     config.storage = :aws
#     config.aws_credentials = {
#         :access_key_id      => 'AKIAJNRPF7XYVHZ2TSMQ',
#         :secret_access_key  => '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',
#         :region                 => 'us-east-1'
#     }
#     config.aws_bucket     = 'development-ihr'
#     config.asset_host     = 'development-ihr.s3.amazonaws.com'
#
#     config.aws_attributes = {
#         expires: 900,
#         cache_control: 'max-age=604800'
#     }
#
#
#   end
# #elsif Rails.env.development?
CarrierWave.configure do |config|
    config.storage = :file
        config.asset_host = ActionController::Base.asset_host
 end
#end