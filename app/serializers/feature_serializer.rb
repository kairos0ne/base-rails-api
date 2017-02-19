class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :feature
  has_one :brief
  has_many :positions
end
