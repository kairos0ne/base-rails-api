class GivenSerializer < ActiveModel::Serializer
  attributes :id, :given
  belongs_to :story
  has_many :continuations
end
