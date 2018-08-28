class Grad < ApplicationRecord
	validates :iin, presence: true, length: {is: 12}
	validates :fio, presence: true
	validates :otd, presence: true
	validates :forma, presence: true
	validates :gender, presence: true
	validates :mob, presence: true, length: {is: 11}
	validates :university, presence: true
end
