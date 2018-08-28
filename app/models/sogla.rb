class Sogla < ApplicationRecord

	#belongs_to :university, foreign_key: :university, primary_key: :key


	validates :university, presence: true
	validates :name, presence: true
	validates :date, presence: true
	validates :doc, presence: true
	validates :vid, presence: true

	has_attached_file :soglas
	validates_attachment_file_name :soglas, matches: [ /\.pdf$/]

	
end
