ActiveAdmin.register Company do
  # permit_params :company_name, :register_no, :address, :city, :state, :postcode, :phone_no, :fax, :email, :website
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :company_name, :register_no, :address, :city, :state, :postcode, :phone_no, :fax, :email, :website, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:company_name, :register_no, :address, :city, :state, :postcode, :phone_no, :fax, :email, :website, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
