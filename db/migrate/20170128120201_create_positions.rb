class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.integer :position_value
      t.string :text
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
