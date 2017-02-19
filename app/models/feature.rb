class Feature < ApplicationRecord
  validates :feature, :bried_id, presence: true

  belongs_to :brief
  has_many :stories
end
