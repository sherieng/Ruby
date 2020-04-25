class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end 

  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.valid?
      @dojo.save
      flash[:success] = "You have successfully added a dojo."
    else
      flash[:error] = @dojo.errors.full_messages
    end
    redirect_to "/dojos/new"      
  end 

  def show
    @dojo = Dojo.find(params[:id])
    @student = Dojo.find(params[:id]).students
  end

  def edit 
    @dojo = Dojo.find(params[:id])
  end
  
  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    if @dojo.valid?
      @dojo.save
      flash[:success] = "You have successfully updated a dojo."
    else
      flash[:error] = @dojo.errors.full_messages
    end
    redirect_to "/dojos/#{@dojo.id}/edit/"
  end

  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to "/dojos"      
  end

  private 
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo)
    end
end
