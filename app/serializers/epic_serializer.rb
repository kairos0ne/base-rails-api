class EpicSerializer < ActiveModel::Serializer
  attributes :id, :epic
  has_one :project
  has_many :stories
end
