class CreateSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sectors do |t|
      t.text :sector
      t.agile :boolean
      t.timestamps
    end
    create_table :projects_sectors, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :sector, index: true
    end
  end
end
