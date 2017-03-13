class Epic < ApplicationRecord
  belongs_to :project
  has_many :stories, through: :project
  has_one :position, through: :project
end
