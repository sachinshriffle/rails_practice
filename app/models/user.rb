class CheckValidation < ActiveModel::Validator
	def validate(record)
		if record.name == "sachin"
			record.errors.add :base ,"My Name Is Sachin"
		end
	end
end
class User < ApplicationRecord
	validates_with  CheckValidation
end
