class Story < ApplicationRecord
  belongs_to :epic
  has_many :givens
  has_many :occurs
  has_many :actions
  has_and_belongs_to_many :position, join_table: "stories_positions", foreign_key: "story_id"
end
