class WorkflowSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :project
end
