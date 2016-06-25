class User < ActiveRecord::Base
	def sefl.find_or_create_by_auth(auth_data)
		# find_or_create_by_provider_and_uid_and_name(auth_data["provider"], auth_data["uid"], auth_data["info"]["name"])
		# find_or_create_by_provider_and_uid(auth_data["provider"], auth_data["uid"])
		find_or_create_by_provider_and_uid(auth_data["provider"], auth_data["uid"], name: auth_data["info"]["name"])
	end
end
