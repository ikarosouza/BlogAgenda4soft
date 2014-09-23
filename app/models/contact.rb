class Contact < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 5}
	validates :phone, presence: true, length: {minimum: 8}
end
