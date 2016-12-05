class Continuation < ApplicationRecord
  belongs_to :story
  has_and_belongs_to_many :given, join_table: "continuations_givens", foreign_key: "given_id"
  has_and_belongs_to_many :occur, join_table: "continuations_occurs", foreign_key: "occur_id"
  has_and_belongs_to_many :action, join_table: "continuations_actions", foreign_key: "action_id"
end
