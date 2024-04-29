class Medium < ApplicationRecord
    include Visible
    
    has_many :thoughts, dependent: :destroy
    
    validates :title, presence: true
    validates :review, presence: true, length: { minimum: 7 }
end
