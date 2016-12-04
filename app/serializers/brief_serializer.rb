class BriefSerializer < ActiveModel::Serializer
  attributes :id, :objective, :overview, :status, :status_value
  has_one :project
end
