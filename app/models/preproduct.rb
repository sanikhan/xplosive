class Preproduct < ActiveRecord::Base
mount_uploader :picture, PictureUploader
def self.search(search)
  where("name LIKE ?", "%#{search}%")
end
end
