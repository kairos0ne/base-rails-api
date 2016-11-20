class CreateEpics < ActiveRecord::Migration[5.0]
  def change
    create_table :epics do |t|
      t.text :as
      t.text :iwant
      t.text :sothat
      t.string :status
      t.integer :status_value
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
