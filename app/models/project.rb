class Project < ApplicationRecord
  belongs_to :client
  has_many :brief
  has_one :type
end
