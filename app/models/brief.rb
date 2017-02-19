class Brief < ApplicationRecord
  validates :objective, :overview, :project_id, presence: true
  
  belongs_to :project
  has_and_belongs_to_many :position, join_table: "briefs_positions", foreign_key: "status_id"
end
