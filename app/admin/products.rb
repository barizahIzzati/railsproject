ActiveAdmin.register Product do
  permit_params :product_name, :brand, :picture, :price, :stock, :descrption, :halal_cert, :kkm_cert, :sirim_cert, :category_id, :status_id, :company_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :product_name, :brand, :picture, :price, :stock, :descrption, :halal_cert, :kkm_cert, :sirim_cert, :user_id, :category_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:product_name, :brand, :picture, :price, :stock, :descrption, :halal_cert, :kkm_cert, :sirim_cert, :user_id, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
