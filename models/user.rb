class User < ActiveRecord::Base
	has_many :posts

	def validates(username, password, confirm_password)
		if password == confirm_password
			if User.find_by(username: username) == nil
				return true
			end
		end
		return false
	end
end