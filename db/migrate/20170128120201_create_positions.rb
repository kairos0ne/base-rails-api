class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.integer :position_value
      t.string :text

      t.timestamps
    end
    create_table :projects_positions, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :position, index: true
    end
    create_table :briefs_positions, id: false do |t|
      t.belongs_to :brief, index: true
      t.belongs_to :position, index: true
    end
    create_table :epics_positions, id: false do |t|
      t.belongs_to :epic, index: true
      t.belongs_to :position, index: true
    end
    create_table :features_positions, id: false do |t|
      t.belongs_to :feature, index: true
      t.belongs_to :position, index: true
    end
    create_table :stories_positions, id: false do |t|
      t.belongs_to :feature, index: true
      t.belongs_to :position, index: true
    end
  end
end
