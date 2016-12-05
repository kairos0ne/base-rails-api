class Action < ApplicationRecord
  belongs_to :story
  has_and_belongs_to_many :continuation, join_table: "continuations_actions", foreign_key: "continuation_id"
end
