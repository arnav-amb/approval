class RegisterController < ApplicationController

	def make
		data = {}
		year = params[:roll].split("/").first
		department = params[:roll].split("/").second
		student = Student.where("roll_no = ?", params[:roll]).first
		company = Company.where("name = ?",params[:company]).first
		r = Registration.new
		if year=="15"
			r.r_type = "intern"
		else
			r.r_type = "placement"
		end
		r.student = student
		r.company = company

		if r.save
    	data[:status] = "OK"
  	else
     data[:status] = "error"
	 	end
		respond_to do |format|
      format.json { render json: data }
		end
	end
end
