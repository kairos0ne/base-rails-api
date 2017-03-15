class Given < ApplicationRecord
  belongs_to :story
  has_many :given_continuations, :dependent => :destroy 
end
