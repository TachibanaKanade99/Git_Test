class Album < ApplicationRecord
	validates :title, length: {
		maximum: 140,
		presence: true,
		too_long: "maximum 140 characters long"
	}

	validates :description, length: {
		maximum: 300,
		allow_nil: true,
		too_long: "maximum 300 characters long"
	}

	validates :sharing_mode, inclusion: {in: %w(public private)}, presence: true

	before_save :check_description

	def check_description
		unless description.present?
			self.description = "This is album of user has id #{self.user_id}"
		end		
	end
end