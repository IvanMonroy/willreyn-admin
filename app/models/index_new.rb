class IndexNew < ActiveRecord::Base
  has_many :images_news, :class_name => 'ImagesNew'
end
