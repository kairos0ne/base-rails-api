class Position < ApplicationRecord
    belongs_to :project
    has_many :epics, through: :project
    has_many :stories, through: :project
    has_many :briefs, through: :project
end
