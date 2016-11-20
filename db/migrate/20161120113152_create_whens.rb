class CreateWhens < ActiveRecord::Migration[5.0]
  def change
    create_table :whens do |t|
      t.text :text
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
