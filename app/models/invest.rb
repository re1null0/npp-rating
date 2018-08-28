class Invest < ApplicationRecord

		#belongs_to :university, foreign_key: :university, primary_key: :key


	validates :university, presence: true
	validates :zayav1, presence: true
	validates :year1, presence: true
	validates :typec, presence: true
	validates :name, presence: true

	has_attached_file :doc1
	validates_attachment_file_name :doc1, matches: [ /\.pdf$/]
	

end
