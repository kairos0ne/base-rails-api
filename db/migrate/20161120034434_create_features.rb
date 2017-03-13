class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.text :feature
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
