ActiveAdmin.register VendorAlbum do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :logo
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
    column :name
    column :logo do |va|
      image_tag va.logo.url(:admin)
    end
    actions
  end



  form do |f|
    f.inputs "Vendor" do
      f.input :name
      f.input :logo
    end
    f.actions
  end

end
