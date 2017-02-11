class Epic < ApplicationRecord
  belongs_to :project
  has_many :stories
  has_and_belongs_to_many :position, join_table: "projects_positions", foreign_key: "project_id"
end
