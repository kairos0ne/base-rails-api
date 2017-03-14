class PositionSerializer < ActiveModel::Serializer
  attributes :id, :position_value, :text
  has_many :projects
end
