class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status, :status_value, :type
  has_one :client
  has_many :brief
  has_many :epic
end
