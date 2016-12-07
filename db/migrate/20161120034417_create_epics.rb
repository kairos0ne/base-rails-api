class CreateEpics < ActiveRecord::Migration[5.0]
  def change
    create_table :epics do |t|
      t.text :as
      t.text :iwant
      t.text :sothat
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
