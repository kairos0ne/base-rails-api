class CreateTransitions < ActiveRecord::Migration[5.0]
  def change
    create_table :transitions do |t|
      t.string :name
      t.string :text
      t.references :workflow, foreign_key: true
      t.boolean :kanban
      t.integer :dependant_id
      t.integer :prerequisite_id
      
      t.timestamps
    end
  end
end
