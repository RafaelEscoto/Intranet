class Training < ActiveRecord::Base
	has_many :users
	validates :expositor, presence: true
end
