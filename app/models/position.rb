class Position < ApplicationRecord
    has_and_belongs_to_many :project, join_table: "projects_positions", foreign_key: "project_id"
    has_and_belongs_to_many :brief, join_table: "briefs_positions", foreign_key: "brief_id"
    has_and_belongs_to_many :feature, join_table: "features_positions", foreign_key: "feature_id"
    has_and_belongs_to_many :epic, join_table: "epics_positions", foreign_key: "epic_id"
    has_and_belongs_to_many :story, join_table: "stories_positions", foreign_key: "story_id"   
end
