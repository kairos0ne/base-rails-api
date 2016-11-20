class StorySerializer < ActiveModel::Serializer
  attributes :id, :story
  has_one :feature
  has_one :given
  has_one :when
  has_one :then
  	
end
