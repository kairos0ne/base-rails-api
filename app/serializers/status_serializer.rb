class StatusSerializer < ActiveModel::Serializer
  attributes :id, :name, :text, :kanban
  has_one :workflow
end
