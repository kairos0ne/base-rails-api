class Story < ApplicationRecord
  belongs_to :epic
  has_many :givens, :dependent => :destroy
  has_many :occurs, :dependent => :destroy
  has_many :actions, :dependent => :destroy

end
