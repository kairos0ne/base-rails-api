class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :status
      t.integer :status_value
      t.timestamps
    end
    create_table :projects_statuses, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :status, index: true
    end
    create_table :briefs_statuses, id: false do |t|
      t.belongs_to :brief, index: true
      t.belongs_to :status, index: true
    end
    create_table :epics_statuses, id: false do |t|
      t.belongs_to :epic, index: true
      t.belongs_to :status, index: true
    end
    create_table :features_statuses, id: false do |t|
      t.belongs_to :feature, index: true
      t.belongs_to :status, index: true
    end
  end
end
