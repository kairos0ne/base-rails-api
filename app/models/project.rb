class Project < ApplicationRecord
  belongs_to :client
  has_many :briefs
  has_many :features
  has_many :epic
  has_many :stories
  has_one :sector
  has_one :position
end
