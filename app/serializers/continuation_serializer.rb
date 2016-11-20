class ContinuationSerializer < ActiveModel::Serializer
  attributes :id, :continuation
  belongs_to :story
end
