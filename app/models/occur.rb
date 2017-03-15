class Occur < ApplicationRecord
  belongs_to :story
  has_many :occur_continuations, :dependent => :destroy
end
