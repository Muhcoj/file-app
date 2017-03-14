class Post < ApplicationRecord
	validates_presence_of :title, :description

	mount_uploader :image, PhotoUploader
end
