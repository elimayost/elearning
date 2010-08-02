class Product < ActiveRecord::Base

	has_many :codes

	validates :name, :presence => true, :uniqueness => true
	validates :description, :presence => true
	validates :price, :presence => true, :numericality => true, :not_zero => true
	validates :download_url, :presence => true, :uniqueness => true, :url_format => true

end
