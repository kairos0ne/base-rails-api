class Project < ApplicationRecord
  belongs_to :client
  has_one :type
  has_many :brief
end
