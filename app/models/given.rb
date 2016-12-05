class Given < ApplicationRecord
  belongs_to :story
  has_and_belongs_to_many :continuation, join_table: "continuations_givens", foreign_key: "continuation_id"
end
