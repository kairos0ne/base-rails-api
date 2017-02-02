class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.integer :status_value
      t.string :text

      t.timestamps
    end
    create_table :projects_position, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :status, index: true
    end
    create_table :briefs_position, id: false do |t|
      t.belongs_to :brief, index: true
      t.belongs_to :status, index: true
    end
    create_table :epics_position, id: false do |t|
      t.belongs_to :epic, index: true
      t.belongs_to :status, index: true
    end
    create_table :features_position, id: false do |t|
      t.belongs_to :feature, index: true
      t.belongs_to :status, index: true
    end
  end
end
