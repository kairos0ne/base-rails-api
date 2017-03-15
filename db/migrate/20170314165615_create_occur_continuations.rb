class CreateOccurContinuations < ActiveRecord::Migration[5.0]
  def change
    create_table :occur_continuations do |t|
      t.string :continuation
      t.references :occur, foreign_key: true

      t.timestamps
    end
  end
end
