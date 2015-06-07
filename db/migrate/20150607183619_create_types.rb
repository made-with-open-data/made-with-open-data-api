class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :types, :name, unique: true
  end
end
