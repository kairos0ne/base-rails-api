class Then < ApplicationRecord
  belongs_to :story
  has_many :continuation, :through => :story
end
