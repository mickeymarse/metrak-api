class Medium < ApplicationRecord
    validates :title, presence: true
    validates :review, presence: true, length: { minimum: 7 }
end
