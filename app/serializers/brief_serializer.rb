class BriefSerializer < ActiveModel::Serializer
  attributes :id, :objective, :overview, :status, :status_value, :ticket, :jira_epic
  has_one :project
end
