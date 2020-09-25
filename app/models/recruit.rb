class Recruit < ApplicationRecord
  belongs_to :user
  belongs_to :golf
  has_many :messages
  
end
