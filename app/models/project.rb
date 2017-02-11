class Project < ApplicationRecord
  belongs_to :client
  has_many :briefs
  has_many :features
  has_many :epics
  has_and_belongs_to_many :sector, join_table: "projects_sectors", foreign_key: "project_id"
  has_and_belongs_to_many :position, join_table: "projects_positions", foreign_key: "project_id"
end
