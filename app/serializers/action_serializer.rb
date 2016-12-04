class ActionSerializer < ActiveModel::Serializer
  attributes :id, :action
  has_one :story
end
