class Project < ApplicationRecord
  belongs_to :client
  has_many :briefs
  has_many :features
  has_many :epics
  has_one :sector
  has_and_belongs_to_many :project, join_table: "projects_statuses", foreign_key: "project_id"
end
