class CreateContinuations < ActiveRecord::Migration[5.0]
  def change
    create_table :continuations do |t|
      t.text :continuation
      t.belongs_to :story, index: true
      t.timestamps
    end
    create_table :continuations_givens, id: false do |t|
      t.belongs_to :continuation, index: true
      t.belongs_to :given, index: true
    end
  end
end
