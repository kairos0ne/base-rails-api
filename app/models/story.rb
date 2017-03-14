class Story < ApplicationRecord
  belongs_to :epic
  has_many :givens, :dependent => :delete_all
  has_many :occurs, :dependent => :delete_all
  has_many :actions, :dependent => :delete_all
end
