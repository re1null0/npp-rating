class Psostav < ApplicationRecord
	#belongs_to :university, foreign_key: :university, primary_key: :key


	validates :university, presence: true

	validates :fio, presence: true
	validates :dis, presence: true
	validates :vid, presence: true
	validates :opit, presence: true
	validates :kolvo, presence: true
	validates :mesto, presence: true
	validates :shtat, presence: true



	has_attached_file :sostav
	validates_attachment_file_name :sostav, matches: [ /\.pdf$/]
end
