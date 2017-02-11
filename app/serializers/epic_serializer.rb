class EpicSerializer < ActiveModel::Serializer
  attributes :id, :epic, :project_id
  has_one :project
  has_one :position
end
