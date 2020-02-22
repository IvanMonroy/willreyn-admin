class ImagesNew < ActiveRecord::Base
  belongs_to :index_new, :class_name => 'IndexNew'
  mount_uploader  :imageone, ImageoneUploader
  mount_uploader  :imagetwo, ImagetwoUploader
  mount_uploader  :imagethree, ImagethreeUploader
end
