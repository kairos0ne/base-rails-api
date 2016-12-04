class StorySerializer < ActiveModel::Serializer
  attributes :id, :story
  has_one :feature
  has_many :given
  has_many :when
  has_many :then
  	
end
