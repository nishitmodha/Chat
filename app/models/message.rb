class Message < ApplicationRecord
	belongs_to :user
	validates :content, presence: true
	validates :content, :length => { :maximum => 50 }
end
