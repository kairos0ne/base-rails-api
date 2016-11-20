class CreateContinuations < ActiveRecord::Migration[5.0]
  def change
    create_table :continuations do |t|
      t.text :continuation
      t.belongs_to :story, index: true
      t.belongs_to :given, index: true
      t.belongs_to :time, index: true
      t.timestamps
    end
  end
end
