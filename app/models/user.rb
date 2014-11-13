class User < ActiveRecord::Base

	validates :email, :full_name, :location, :password, presence: true
	validates_confirmation_of :password
	validates_length_of :bio, :minimum => 30, :allow_blank => false
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	validates_uniqueness_of :email 
end
