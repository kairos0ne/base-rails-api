class Story < ApplicationRecord
  belongs_to :feature
  has_one :given
  has_one :when 
  has_one :then
  	
end
