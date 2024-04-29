class Medium < ApplicationRecord
    has_many :thoughts
    
    validates :title, presence: true
    validates :review, presence: true, length: { minimum: 7 }
end
