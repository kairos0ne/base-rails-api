class Brief < ApplicationRecord
  belongs_to :project
  has_and_belongs_to_many :status, join_table: "briefs_statuses", foreign_key: "status_id"
end
