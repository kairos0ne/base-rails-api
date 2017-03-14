class Project < ApplicationRecord
  belongs_to :client
  has_many :briefs, :dependent => :destroy 
  has_many :epic, :dependent => :destroy 
  has_one :sector, :dependent => :destroy
  has_one :position, :dependent => :destroy
end
