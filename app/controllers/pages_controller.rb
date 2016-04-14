class PagesController < ApplicationController
  before_action :logged_in_user, only: [:update, :edit]
  def show
  end
  def home
  end

  def edit
    @current_page = request.env['PATH_INFO']
    if @current_page === "/about"
      @page = Page.find(1)
    elsif @current_page === "/work"
      @page = Page.find(2)
    end

    @content_block = @page.content_blocks.find(page_params[:pk])
    @editable = page_params(:editable)
    if @editable === false
      @content_block.editable = true
      @content_block.save
      render json: @content_block
    else
      @content_block.editable = false
      @content_block.save
      render json: @content_block
    end
    render :nothing => true
  end

  def update

    @current_page = request.env['PATH_INFO']
    if @current_page === "/about"
      @page = Page.find(1)
    elsif @current_page === "/work"
      @page = Page.find(2)
    end

    @content_block = @page.content_blocks.find(page_params[:pk])

    content = params[:value]
    respond_to do |format|
      if @content_block.update(content: content)
        format.any { render json: @content_block }
      else
        format.any( render json: @content_block.errors, status: :unprocessable_entity )
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
  end

  private
    def page_params
      params.permit(:pk, :id, :editable)
    end
end
