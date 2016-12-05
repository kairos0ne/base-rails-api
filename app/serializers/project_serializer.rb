class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status, :status_value
  has_one :client
  has_many :brief
  has_many :epic
  has_one :sector
end
