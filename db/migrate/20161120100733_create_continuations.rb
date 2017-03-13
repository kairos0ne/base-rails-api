class CreateContinuations < ActiveRecord::Migration[5.0]
  def change
    create_table :continuations do |t|
      t.text :continuation
      t.references :story, index: true
      t.timestamps
    end
  end
end
