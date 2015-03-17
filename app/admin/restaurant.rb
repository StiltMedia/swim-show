ActiveAdmin.register Restaurant do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :address, :phone, :description, :location_id, :destroy, :create
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
    column :name
    column :address
    column :phone
    column :description
    column :location
    actions
  end

  form do |f|
    f.inputs "Club Details" do
      f.input :name
      f.input :location, prompt: 'Select Location'
      f.input :phone
      f.input :address
      f.input :description
    end
    f.actions
  end


end
