class Project < ApplicationRecord
  belongs_to :client
  has_many :brief
  has_many :feature
  has_many :epic
end
