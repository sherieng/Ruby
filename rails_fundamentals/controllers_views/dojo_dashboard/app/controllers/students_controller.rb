class StudentsController < ApplicationController
  def index
  end

  def new
    @dojos= Dojo.all
    @dojo = Dojo.find(params[:dojo_id])
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      flash[:success] = "You have successfully added a student."
    else
      flash[:error] = @student.errors.full_messages
    end
    redirect_to "/dojos/#{params[:dojo_id]}/students/new"  
  end

  def show
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
  end

  def edit
    @dojos= Dojo.all
    @dojo = Student.find(params[:id]).dojo
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.valid?
      @student.save
      flash[:success] = "You have successfully updated a student."
    else
      flash[:error] = @student.errors.full_messages
    end
    redirect_to "/dojos/#{params[:dojo_id]}/students/new"
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy 
    redirect_to "/dojos/#{params[:dojo_id]}"  
  end

  private 
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
