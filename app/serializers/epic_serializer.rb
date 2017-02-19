class EpicSerializer < ActiveModel::Serializer
  attributes :id, :epic
  has_one :project
  has_one :position
end
