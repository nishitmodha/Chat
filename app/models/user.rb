class User < ApplicationRecord
	has_many :messages
	validates :name, presence:true, uniqueness: {case_sensitive: false}
end
