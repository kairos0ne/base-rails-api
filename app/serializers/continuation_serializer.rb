class ContinuationSerializer < ActiveModel::Serializer
  attributes :id, :continuation
  has_one :story
end
