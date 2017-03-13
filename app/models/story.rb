class Story < ApplicationRecord
  belongs_to :project
  has_one :epic, through: :project
  has_many :givens
  has_many :occurs
  has_many :actions
  has_one :position, through: :epic
end
