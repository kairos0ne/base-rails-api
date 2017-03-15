class CreateGivenContinuations < ActiveRecord::Migration[5.0]
  def change
    create_table :given_continuations do |t|
      t.string :continuation
      t.references :given, foreign_key: true

      t.timestamps
    end
  end
end
