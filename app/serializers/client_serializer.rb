class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :business_area
  has_many :projects
end
