class Feature < ApplicationRecord
  belongs_to :epic
  has_many :story 
end
