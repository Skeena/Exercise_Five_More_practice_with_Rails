class Comment < ApplicationRecord
	belongs_to :idea, optional: true
	validates :user_name, presence: true
	validates :body, presence: true
    validates_length_of :body, minimum: 5
    validates_length_of :user_name, minimum: 2

end
