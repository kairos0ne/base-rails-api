class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text :asa
      t.text :iwant
      t.text :sothat
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
