class Given < ApplicationRecord
  belongs_to :story
  has_many :continuation, :through => :story
end
