class StudentsController < ApplicationController
    def index
        @dojo = Dojo.all
    end
    
    def new
        @dojo = Dojo.find(params[:dojo_id])
        @dojos = Dojo.all
    end
    
    def create
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.new
        @student.first_name = student_params[:first_name]
        @student.last_name = student_params[:last_name]
        @student.email = student_params[:email]
        @student.dojo = Dojo.find(student_params[:dojo])
            if @student.valid?
                @student.save
                redirect_to "/dojos/#{@student.dojo_id}"
                flash[:notice] = "You have successfully added a student."
            else 
                flash[:error] = @student.errors.full_messages
                redirect_to "/dojos/#{@dojo.id}/students/new"
            end
    end
    
    def edit
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])  
        @dojos = Dojo.all   
    end
    
    def update
        @student = Student.find(params[:id])
        @student.first_name = student_params[:first_name]
        @student.last_name = student_params[:last_name]
        @student.email = student_params[:email]
        @student.dojo = Dojo.find(student_params[:dojo])
        @student.save
            if @student.valid?
                redirect_to "/dojos/#{@student.dojo_id}"
                flash[:notice] = "You have successfully updated the dojo."
            else 
                flash[:error] = @student.errors.full_messages
                redirect_to "/dojos/#{@student.dojo_id}/students/#{@student.id}/edit"
            end
    end
    
    def show
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
        @students = Student.find(params[:id]).dojo.students
    end

    def destroy
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
        @student.destroy 
        redirect_to "/dojos/#{@dojo.dojo_id}"
    end

    private 
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :dojo)
    end

end
