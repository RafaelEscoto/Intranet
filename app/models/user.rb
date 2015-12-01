class User < ActiveRecord::Base
	belongs_to :area
	belongs_to :role
	belongs_to :training, :class_name => 'Training', :foreign_key => 'expositor'
	validates :area, :role, presence: true
end
	