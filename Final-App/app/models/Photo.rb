class Photo < ApplicationRecord
	validates :title, length: {
		maximum: 140,
		presence: true,
		too_long: "maximum 140 characters long"
	}

	validates :description, length: {
		maximum: 300,
		presence: true,
		too_long: "maximum 300 characters long"
	}

	validates :sharing_mode, inclusion: {in: %w(public private)}, presence: true

	
end