class ImagesNew < ApplicationRecord
  mount_uploader  :imageone, ImageoneUploader
  mount_uploader  :imagetwo, ImagetwoUploader
  mount_uploader  :imagethree, ImagethreeUploader
end
