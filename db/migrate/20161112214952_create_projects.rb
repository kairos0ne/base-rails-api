class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :status
      t.integer :status_value
      t.string :type
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
