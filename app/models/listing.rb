class Listing < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	
	validates :name, :destription, :price, presence: true
	validates :price, numericality: {greater_than: 0}
end
