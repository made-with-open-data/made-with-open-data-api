class AddImageUrlAndPublishedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :image_url, :string
    add_column :projects, :published, :boolean
    add_index :projects, :published
  end
end
