class Work < ActiveRecord::Base
  mount_uploader  :first_image, ImageUploader
  mount_uploader  :second_image, ImageUploader
  mount_uploader  :third_image, ImageUploader
  mount_uploader  :fourth_image, ImageUploader
  mount_uploader  :fifth_image, ImageUploader
  mount_uploader  :sixth_image, ImageUploader
end
