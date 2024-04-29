class Thought < ApplicationRecord
  include Visible
  
  belongs_to :medium
end
