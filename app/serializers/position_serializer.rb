class PositionSerializer < ActiveModel::Serializer
  attributes :id, :position_value, :text
  has_many :projects
  has_many :briefs
  has_many :features
  has_many :epic
  has_many :stories
end
