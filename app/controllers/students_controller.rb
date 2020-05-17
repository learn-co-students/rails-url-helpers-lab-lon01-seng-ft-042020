class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end


  # Activate page
  # Should mark an inactive student as active 
  # Should mark an active student as inactive 
  # Should redirect to the student show page 
  def activate 
    @student.active = !@student.active 
    @student.save 
    redirect_to student_path(@student)
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end