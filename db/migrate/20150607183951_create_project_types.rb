class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.references :project, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
