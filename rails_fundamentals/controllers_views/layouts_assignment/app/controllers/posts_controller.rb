class PostsController < ApplicationController
  layout "three_column"

  def index
    @post = Post.all
    @user = User.all
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      flash[:success] = "You have successfully added a post."
    else
      flash[:error] = @post.errors.full_messages
    end
    redirect_to "/posts"  
  end

  private 
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end

end
