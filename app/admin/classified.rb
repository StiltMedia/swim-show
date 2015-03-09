ActiveAdmin.register Classified do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :company, :position, :short_description, :email, :phone, :website, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :company
    column :email
    column :phone
    column :website
    actions
  end

  form do |f|
    f.inputs do
      f.input :company
      f.input :position
      f.input :short_description
      f.input :email
      f.input :phone
      f.input :website
      f.input :description, :as => :ckeditor
    end
    f.actions
  end


  show do
  attributes_table do
    row :company
    row :position
    row :short_description
    row :email
    row :phone
    row :website
    row :description do
      raw classified.description
    end
    row :created_at
    row :updated_at
  end
  active_admin_comments
end

end
