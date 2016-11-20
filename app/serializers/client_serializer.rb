class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :business_area
  has_one :user
  has_many :project
end
