class SectorSerializer < ActiveModel::Serializer
  attributes :id, :sector, :agile, :digital, :creative, :video, :house_keeping
  has_many :briefs
end
