ActiveAdmin.register VendorAlbum do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :logo, pictures_attributes: [:id, :title, :image]
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


  show do
    div class: "vendor-view" do
      h2 "Images"
      ul class: "images-ul" do
        vendor_album.pictures.each do |img|
          li do
            image_tag(img.image.url(:thumb))
          end
        end
      end
    end
  end



  form do |f|
    f.inputs "Vendor Details" do
      f.input :name
      f.input :logo
      f.has_many :pictures do |a|
        a.input :title
        a.input :image
      end
    end
    f.actions
  end
end