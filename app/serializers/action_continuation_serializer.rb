class ActionContinuationSerializer < ActiveModel::Serializer
  attributes :id, :continuation
  has_one :action
end
