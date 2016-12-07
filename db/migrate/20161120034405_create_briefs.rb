class CreateBriefs < ActiveRecord::Migration[5.0]
  def change
    create_table :briefs do |t|
      t.text :objective
      t.text :overview
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
