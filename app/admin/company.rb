ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :offer, :description, :start_time, :end_time, :departments
#
# or
#
index do
  column :name
  column :offer
  column :description
  column :start_time
  column :end_time
  column :departments
  actions
end

member_action :export, method: :get do
end

controller do

  def export
    company = Company.find_by_id(params[:id])
    r = company.registrations
    s_id = []
    r.each do |r|
      s_id << r.student_id
    end
    students = Student.where(id:s_id).order(:dept)
    render partial: 'exportlist', locals: {students: students}
  end

end
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
