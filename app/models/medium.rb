class Medium < ApplicationRecord
    include Typology, Likeness
    
    has_many :thoughts, dependent: :destroy
    
    validates :title, presence: true
    validates :format, presence: true
    validates :appreciation, presence: true
end
