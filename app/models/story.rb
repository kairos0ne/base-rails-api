class Story < ApplicationRecord
  belongs_to :feature
  has_many :givens
  has_many :occurs
  has_many :actions
end
