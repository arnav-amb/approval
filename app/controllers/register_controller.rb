class RegisterController < ApplicationController

	def make
		data = {}
		year = params[:roll].split("/").first
		student = Student.where("roll_no = ?", params[:roll]).first
		company = Company.where("name = ?",params[:company]).first
		unless student.nil?
			if company.departments.include?(student.dept)
			# make Registration
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
			 		data[:status] = "save error"
		 		end
			else
				# return false
				data[:status] = "error"
				data[:reason] = "Ineligible department"
			end
		else
			data[:status] = "error"
			data[:reason] = "Invalid Roll No."
		end
		respond_to do |format|
      format.json { render json: data }
		end
	end
end
