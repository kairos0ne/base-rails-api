class Feature < ApplicationRecord
  belongs_to :brief
  has_many :stories
end
