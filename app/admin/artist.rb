ActiveAdmin.register Artist do

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

  permit_params :name, :description

  index do
    selectable_column
    id_column
    column :name
    column :updated_at
    column :created_at
    actions
  end

  filter :name
  filter :created_at
  filter :updated_at


end
