class University < ApplicationRecord
	
	has_many :soglas, foreign_key: :university, primary_key: :key

	has_many :psostavs, foreign_key: :university, primary_key: :key

	belongs_to :university_pull, :primary_key => "key", :foreign_key => "key"
	belongs_to :speciality_pull, :primary_key => "key", :foreign_key => "speciality"

	has_many :users
	has_many :disciplines, :primary_key => "key", :foreign_key => "university"


	has_attached_file :mop
	validates_attachment :mop, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}


	has_attached_file :ked
	validates_attachment :ked, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingnl.document)}

	has_attached_file :rup
	validates_attachment :rup, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingnl.document)}


	has_many :grads, foreign_key: :university, primary_key: :key
	
	validates :key, presence: true
	validates :name, presence: true
	validates :speciality, presence: true, uniqueness: {scope: [:key]}

end
