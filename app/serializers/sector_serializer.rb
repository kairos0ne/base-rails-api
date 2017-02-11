class SectorSerializer < ActiveModel::Serializer
  attributes :id, :sector, :agile, :digital, :creative, :print, :waterfall, :video, :house_keeping
  has_many :project
end
