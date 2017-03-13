class CreateSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sectors do |t|
      t.text :sector
      t.integer :agile
      t.integer :waterfall
      t.integer :digital
      t.integer :creative
      t.integer :video
      t.integer :print
      t.integer :house_keeping
      t.references :project, foreign_key: true
      
      t.timestamps
    end
  end
end
