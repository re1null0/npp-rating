class Speciality < ApplicationRecord
	#belongs_to :university, optional: true
	#belongs_to :Speciality_pull, optional: true
	has_many :disciplines
	validates :name, presence: true #code 5В011200
	validates :university, presence: true #code 13
	validates :email, presence: true 

	serialize :mark
	
	has_attached_file :ocenka
	validates_attachment :ocenka, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

	
end
