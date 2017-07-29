class StudentController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)    # Not the final implementation!
   if @student.save
     redirect_to root_path
   else
     render 'new'
   end
  end

  private

      def student_params
        params.require(:student).permit(:name, :roll_no, :email, :dept, :phone, :cgpa,
        :pan, :address, :xth, :xiith, :reg_no)
      end

end
