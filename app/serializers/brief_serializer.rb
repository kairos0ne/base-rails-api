class BriefSerializer < ActiveModel::Serializer
  attributes :id, :Project, :objective, :overview, :status, :status_value
  has_one :project
end
