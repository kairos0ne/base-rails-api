class CreateActionContinuations < ActiveRecord::Migration[5.0]
  def change
    create_table :action_continuations do |t|
      t.string :continuation
      t.references :action, foreign_key: true

      t.timestamps
    end
  end
end
