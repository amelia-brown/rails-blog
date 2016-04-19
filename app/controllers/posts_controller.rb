class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = User.first.posts.build(post_params)
    if @post.save
      flash[:success] = "Posted"
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:content, :title, :picture)
    end
end

