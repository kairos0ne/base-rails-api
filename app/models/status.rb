class Status < ApplicationRecord
  has_and_belongs_to_many :project, join_table: "projects_statuses", foreign_key: "project_id"
  has_and_belongs_to_many :brief, join_table: "briefs_statuses", foreign_key: "brief_id" 
end
