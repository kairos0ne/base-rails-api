class Action < ApplicationRecord
  belongs_to :story
  has_many :action_continuations, :dependent => :destroy
end
