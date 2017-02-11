class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :feature, :brief_id
  has_one :brief
  has_many :positions
end
