class CreateProjectCategories < ActiveRecord::Migration
  def change
    create_table :project_categories do |t|
      t.references :project, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
