class CreateBriefs < ActiveRecord::Migration[5.0]
  def change
    create_table :briefs do |t|
      t.string :Project
      t.text :objective
      t.text :overview
      t.string :status
      t.integer :status_value
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
