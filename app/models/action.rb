class Action < ApplicationRecord
  belongs_to :story
  has_many :continuations, through: :story
end
