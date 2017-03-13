class Brief < ApplicationRecord
  belongs_to :project
  has_one :position, through: :project
  has_many :features, through: :project
end
