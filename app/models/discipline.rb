class Discipline < ApplicationRecord

	#belongs_to :user, :primary_key => "email", :foreign_key => "user"
	belongs_to :speciality_pull, :primary_key => "key", :foreign_key => "speciality"
	#belongs_to :university, :primary_key => "key", :foreign_key => "university"
	validates :name, presence: true
	

	has_attached_file :syllabus			 
	validates_attachment_file_name :syllabus, matches: [ /\.pdf$/]
	validates :syllabus, presence: true


	validates :course, presence: true 
	validates :sem, presence: true
	validates :credits, presence: true
	validates :cycle, presence: true

end
