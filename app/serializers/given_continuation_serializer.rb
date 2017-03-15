class GivenContinuationSerializer < ActiveModel::Serializer
  attributes :id, :continuation, :given_id
  has_one :given
end
