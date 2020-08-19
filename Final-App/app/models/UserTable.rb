class UserTable < ApplicationRecord
	validates :first_name, :last_name, length: {
		maximum: 25,
		presence: true,
		too_long: "maximum 25 characters long"
	}

	validates :email, length: {
		maximum: 255,
		presence: true,
		too_long: "maximum 255 characters long"
	},
	uniqueness: {case_sensitive: true}

	validates :password, length: {
		maximum: 64,
		presence: true,
		too_long: "maximum 64 characters long"
	}
end