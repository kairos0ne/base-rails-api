class EpicSerializer < ActiveModel::Serializer
  attributes :id, :as, :iwant, :sothat, :status, :status_value
  has_one :project
end
