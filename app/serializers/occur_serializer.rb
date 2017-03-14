class OccurSerializer < ActiveModel::Serializer
  attributes :id, :occurs
  has_one :story
end
