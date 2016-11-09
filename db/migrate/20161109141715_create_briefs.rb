class CreateBriefs < ActiveRecord::Migration[5.0]
  def change
    create_table :briefs do |t|
      t.text :overview
      t.text :objective
      t.integer :status_value
      t.string :status
      t.string :ticket
      t.string :jira_epic
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
