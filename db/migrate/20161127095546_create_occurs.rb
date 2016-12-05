class CreateOccurs < ActiveRecord::Migration[5.0]
  def change
    create_table :occurs do |t|
      t.text :occurs
      t.references :story, foreign_key: true

      t.timestamps
    end
    create_table :continuations_occurs, id: false do |t|
      t.belongs_to :continuation, index: true
      t.belongs_to :occure, index: true
    end
  end
end
