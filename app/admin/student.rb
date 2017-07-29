ActiveAdmin.register Student do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :email, :roll_no, :phone, :dept, :cgpa, :reg_no, :pan, :address, :xth, :xiith, :reg_no
 index do
   column :name
   column :email
   column :roll_no
   column :dept
   column :cgpa
   actions
 end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
