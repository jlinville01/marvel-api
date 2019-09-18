class Character < ApplicationRecord
	validates :alias, presence: true
	validates :real_name, presence: true
	validates :debut, presence: true
	validates :status, presence: true
	validates :powers, presence: true
	validates :bio, presence: true
end