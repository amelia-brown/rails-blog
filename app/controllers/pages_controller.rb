class PagesController < ApplicationController
  before_action :logged_in_user, only: [:update]
  def show
  end
  def home
    WillPaginate.per_page = 5
    @posts = User.first.posts.all.paginate(page: params[:page])
    @post = User.first.posts.build if logged_in?
  end

  def update

    @editable = params[:editable]

    if @editable != nil
      @page = Page.find(params[:page])
      @content_block = @page.content_blocks.find(params[:pk])
      @editable = params[:editable]
      @content_block.toggle!(:editable)
      respond_to do |format|
        format.json { render json: @content_block }
      end
      #      render :nothing => true
    elsif @editable === nil

      @current_page = request.env['PATH_INFO']
      if @current_page === "/about"
        @page = Page.find(1)
      elsif @current_page === "/work"
        @page = Page.find(2)
      end
      @content_block = @page.content_blocks.find(params[:pk])
      content = params[:value]
      respond_to do |format|
        if @content_block.update(content: content)
          format.any { render json: @content_block }
        else
          format.any { render json: @content_block.errors, status: :unprocessable_entity }
        end
      end
    end
  end
  def about
    @page = Page.find_by(title: "about")
    @content = @page.content_blocks
    @user = current_user
  end

  def work
    @page = Page.find_by(title: "work")
    @content = @page.content_blocks
    @user = current_user
  end

  def contact
    @page = Page.find_by(title: "contact")
  end

  private
  def page_params
    params.require(:page, :content_block).permit(:pk, :id, :editable)
  end
end
