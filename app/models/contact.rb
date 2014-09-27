class Contact < ActiveRecord::Base
	has_many :notes, dependent: :destroy
	validates :name, presence: true, length: {minimum: 5}
	validates :phone, presence: true, length: {minimum: 8}
end
