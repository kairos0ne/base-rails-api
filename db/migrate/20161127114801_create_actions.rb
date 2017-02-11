class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.text :action
      t.references :story, foreign_key: true

      t.timestamps
    end
    create_table :continuations_actions, id: false do |t|
      t.belongs_to :continuation, index: true
      t.belongs_to :action, index: true
    end
  end
end
