class EpicSerializer < ActiveModel::Serializer
  attributes :id, :as, :iwant, :sothat, :status, :status_value
  has_one :project
  has_many :feature
end
