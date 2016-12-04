class Story < ApplicationRecord
  belongs_to :feature
  has_many :given
  has_many :when 
  has_many :then
end
