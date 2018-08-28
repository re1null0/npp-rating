class Credit < ApplicationRecord
	#belongs_to :university, foreign_key: :university, primary_key: :key


	validates :university, presence: true
	validates :name, presence: true
	validates :mesto, presence: true
	validates :date1, presence: true
	validates :date2, presence: true

	validates :link, presence: true

	has_attached_file :credit
	validates_attachment_file_name :credit, matches: [ /\.pdf$/]
end
