class Code < ActiveRecord::Base

	["openssl", "digest/sha1"].each { |r| require r }

	belongs_to :product
	belongs_to :user
	
	before_create :generate_code

	validates :product_id, :presence => true
	validates :user_id, :presence => true
	validates :expires_at, :presence => true

	protected
	def generate_code
		self.download_code = Digest::SHA1.hexdigest(OpenSSL::Random.random_bytes(512))
	end

end
