class BriefSerializer < ActiveModel::Serializer
  attributes :id, :objective, :overview
  has_one :project
  has_many :features
end
