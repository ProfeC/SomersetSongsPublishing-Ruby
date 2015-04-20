ActiveAdmin.register Song do

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

  permit_params :title, :description, :original_release_date, :permalink, :file_uri, :length, :artist_id, :album_id, :theme, :tag, :genre


  index do
    selectable_column
    id_column
    column :title
    column :length
    column :theme
    column :tag
    column :genre
    column :original_release_date
    column :updated_at
    column :created_at
    actions
  end

  filter :title
  filter :tag
  filter :theme
  filter :genre
  filter :original_release_date
  filter :created_at
  filter :updated_at

  # Customize the form
  form do |f|
    f.semantic_errors # shows errors on :base

    f.inputs 'Details' do
      f.input :title
      f.input :artist
      f.input :album
      f.input :original_release_date, label: 'Originally Released'
      #, as: :datepicker, datepicker_options: { autosize: true, min_date: "-50Y", max_date: "+3D", date_format: 'dd-mm-yyyy'}
      f.input :length
      f.input :file_uri
    end

    f.inputs 'Content', :description

    f.inputs 'Categorization' do
      f.input :genre
      f.input :theme
      f.input :tag

      # f.inputs do
      #   f.has_many :genres, heading: 'Genres', allow_destroy: true, new_record: do |g|
      #     g.input :title
      #   end
      # end

      # f.inputs do
      #   f.has_many :themes, heading: 'Themes', allow_destroy: true, new_record: true do |t|
      #     t.input :title
      #   end
      # end

      # f.inputs do
      #   f.has_many :tags, heading: 'Tags', allow_destroy: true, new_record: true do |b|
      #     b.input :title
      #   end
      # end
    end

    f.actions
  end

end
