class Message < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :title, presence: true, length: {minimum: 3, maximum: 20}
	validates :description, presence: true, length: {minimum: 10, maximum: 500}
end
