class ImageoneUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  include CarrierWave::MiniMagick
  storage :fog

  # move this line outside of your method
  process resize_to_fit: [512,512]

  version :medium do

    # change the word 'fit' to 'fill'
    process resize_to_fill: [250,250]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end