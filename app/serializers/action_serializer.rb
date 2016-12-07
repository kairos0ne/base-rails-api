class ActionSerializer < ActiveModel::Serializer
  attributes :id, :action
  has_one :story
  has_many :continuations
end
