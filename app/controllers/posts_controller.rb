class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
    @previous_posts = []
    3.times do |key|
      post = Post.find(@post.id - key)
      if post === nil
        return
      else
        @previous_posts.push(post)
      end
    end
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


