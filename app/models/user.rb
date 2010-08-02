class User < ActiveRecord::Base

	["openssl", "digest/sha1"].each { |r| require r }

	has_many :codes
	
	before_create :secure_password

	validates :name, :presence => true
	validates :email, :presence => true, :uniqueness => true, :email_format => true
	validates :password, :presence => true

	protected
	def secure_password
		salt = Digest::SHA1.hexdigest(OpenSSL::Random.random_bytes(512))
		encrypted_password = Digest::SHA1.hexdigest("#{self.password}--#{salt}")
		self.salt = salt
		self.password = encrypted_password
	end

end
