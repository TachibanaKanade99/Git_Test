class User < ApplicationRecord

	# Active Record Validation
	validates :first_name, :last_name, length: {
		maximum: 25,
		presence: true,
		too_long: "maximum 25 characters long"
	},
	format: { 
		with: /\A[a-zA-Z]+\z/,
		message: "only alows characters"
	}

	validates :email, length: {
		maximum: 255,
		presence: true,
		too_long: "maximum 255 characters long"
	},
	uniqueness: {
		case_sensitive: true,
		message: "this email has already been taken"
	},
	email: true # for validate email

	validates :password, length: {
		maximum: 64,
		presence: true,
		too_long: "maximum 64 characters long"
	}

	# Active Record Association
	has_many :albums, dependent: :destroy
	has_many :photos, dependent: :destroy
end