class CreateOccurs < ActiveRecord::Migration[5.0]
  def change
    create_table :occurs do |t|
      t.text :occurs
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
