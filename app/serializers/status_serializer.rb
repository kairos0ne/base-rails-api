class StatusSerializer < ActiveModel::Serializer
  attributes :id, :status, :status_value
  has_many :projects
  has_many :briefs
end
