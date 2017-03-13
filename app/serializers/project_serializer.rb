class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :client
  has_one :sector
  has_many :briefs
  has_many :epic  
  has_one :position
end
