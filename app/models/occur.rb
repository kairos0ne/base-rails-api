class Occur < ApplicationRecord
  belongs_to :story
  has_and_belongs_to_many :continuations, join_table: "continuations_occurs", foreign_key: "continuations_id"
end
