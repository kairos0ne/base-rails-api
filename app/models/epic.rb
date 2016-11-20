class Epic < ApplicationRecord
  belongs_to :project
  has_many :story
end
