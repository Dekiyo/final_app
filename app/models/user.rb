class User < ActiveRecord::Base
	has_and_belongs_to_many :stories
	has_many :blocks
	has_secure_password
end
