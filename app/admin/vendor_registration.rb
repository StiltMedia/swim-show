ActiveAdmin.register VendorRegistration do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :first_name,:last_name,:company,:title,:address_1,:address_2,:city,:state,:province,:postal,:country,:email,:email,:opt_out_email,:website,:phone,:extension,:phone_2,:fax,:opt_out_phone,:type_of_store,:status,:number_of_stores,:attended_swimshow,:attended_other_tradeshows,:mail_show_directory
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
