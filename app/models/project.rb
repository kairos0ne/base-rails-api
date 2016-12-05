class Project < ApplicationRecord
  belongs_to :client
  has_many :briefs
  has_many :features
  has_many :epics
  has_one :sector
end
