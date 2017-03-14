class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :client
  has_one :sector
  has_one :position
  has_many :briefs
  has_many :epic
end
