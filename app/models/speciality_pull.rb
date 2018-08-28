class SpecialityPull < ApplicationRecord
	has_many :specialities
	validates :key, presence: true
	validates :name, presence: true

end
