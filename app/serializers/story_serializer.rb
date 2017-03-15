class StorySerializer < ActiveModel::Serializer
  attributes :id, :asa, :iwant, :sothat
  has_one :epic
  has_many :givens
  has_many :occurs
  has_many :actions  
end
