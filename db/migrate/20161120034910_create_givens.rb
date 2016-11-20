class CreateGivens < ActiveRecord::Migration[5.0]
  def change
    create_table :givens do |t|
      t.text :given
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
