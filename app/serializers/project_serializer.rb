class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status, :status_value
  has_one :client
  has_many :briefs
  has_many :epics
  has_one :sector
  has_one :status
end
