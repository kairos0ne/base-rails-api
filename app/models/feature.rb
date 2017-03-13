class Feature < ApplicationRecord
  belongs_to :project
  has_one :brief, through: :project
  has_many :stories
end
