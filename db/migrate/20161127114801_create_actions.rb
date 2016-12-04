class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.text :action
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
