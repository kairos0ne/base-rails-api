class StorySerializer < ActiveModel::Serializer
  attributes :id, :story
  has_one :feature
end
