class Feature < ApplicationRecord
  belongs_to :epic
  has_many :stories
end
