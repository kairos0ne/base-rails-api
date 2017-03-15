class GivenSerializer < ActiveModel::Serializer
  attributes :id, :given
  has_one :story
  has_many :given_continuations
end
