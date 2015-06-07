class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
    add_index :projects, :title, unique: true
  end
end
