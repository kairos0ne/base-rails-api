class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :feature
  has_one :brief
end
