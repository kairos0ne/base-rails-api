class GivenSerializer < ActiveModel::Serializer
  attributes :id, :given
  has_one :story
end
