class WhenSerializer < ActiveModel::Serializer
  attributes :id, :text
  has_one :story
end
