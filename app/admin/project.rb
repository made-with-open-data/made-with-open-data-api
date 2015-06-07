ActiveAdmin.register Project do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :title, :published, :url, :image_url, :description,
                type_ids: [], category_ids: []

  index do
    column :title
    column :url do |project|
      link_to project.url, project.url, target: '_blank'
    end
    column :published
    column :created_at

    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Project' do
      f.input :published
      f.input :title
      f.input :url
      f.input :image_url
      f.input :description
      f.input :types, as: :check_boxes
      f.input :categories, as: :check_boxes
    end

    f.actions
  end
end
