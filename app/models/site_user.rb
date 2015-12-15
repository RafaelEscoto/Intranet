class SiteUser < ActiveRecord::Base
	
	has_secure_password
end
