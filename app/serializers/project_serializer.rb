class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :client
  has_many :briefs
  has_many :epics
  has_one :sector
  has_many :positions
end
