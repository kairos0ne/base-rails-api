class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :text
      t.references :workflow, foreign_key: true
      t.boolean :kanban

      t.timestamps
    end
  end
end
