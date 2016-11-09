class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :busines_area
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
