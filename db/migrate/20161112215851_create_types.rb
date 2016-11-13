class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :type
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
