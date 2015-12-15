class User < ActiveRecord::Base
	has_many :logins
	belongs_to :area
	belongs_to :role
	belongs_to :training, :class_name => 'Training', :foreign_key => 'expositor'
	belongs_to :login, :class_name => 'Login', :foreign_key => 'name'
	validates :area, :role, presence: true
end
	