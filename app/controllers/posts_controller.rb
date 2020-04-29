class PostsController < ApplicationController
  def index
    @posts = Post.all
  end



  private
  def post_params
    params.require(:post).permit(:title, :content, :image).merge(user_id: current_user.id)
  end
end
