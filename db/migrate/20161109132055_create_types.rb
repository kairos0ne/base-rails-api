class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :type
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
