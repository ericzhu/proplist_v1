class Listing < ActiveRecord::Base
	validates :name, :destription, :price, presence: true
	validates :price, numericality: {greater_than: 0}

	belongs_to :user

	mount_uploader :image, ImageUploader
end
