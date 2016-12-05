class Sector < ApplicationRecord
    has_and_belongs_to_many :project, join_table: "projects_sectors", foreign_key: "project_id"
end