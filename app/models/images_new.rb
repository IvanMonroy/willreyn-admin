class ImagesNew < ActiveRecord::Base
  belongs_to :index_new
  mount_uploader  :imageone, ImageoneUploader
  mount_uploader  :imagetwo, ImagetwoUploader
  mount_uploader  :imagethree, ImagethreeUploader
end
