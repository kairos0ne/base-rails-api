class CreateEpics < ActiveRecord::Migration[5.0]
  def change
    create_table :epics do |t|
      t.text :epic
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
