class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
  end

  def new
  end

  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.valid?
      @dojo.save
      redirect_to '/dojos'
      flash[:notice] = "You have successfully created a new dojo."
    else 
      flash[:error] = @dojo.errors.full_messages
      redirect_to "/dojos/new"
    end
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    puts "\n\n in update method \n\n"
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    if @dojo.valid?
      @dojo.save
      redirect_to "/dojos/#{@dojo.id}"
      flash[:notice] = "You have successfully updated the dojo."
    else 
      flash[:error] = @dojo.errors.full_messages
      redirect_to "/dojos/#{@dojo.id}/edit"
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
    @students = Dojo.find(params[:id]).students
    
  end

  def destroy
    @dojo = Dojo.find(params[:id])
    @dojo.destroy 
    redirect_to "/dojos"
  end

  private 
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
