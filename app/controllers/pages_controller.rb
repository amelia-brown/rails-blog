class PagesController < ApplicationController
  before_action :logged_in_user, only: [:edit]
  def show
  end

  def edit

  end
  def home
  end
  def update
    @page = Page.find(params[])
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end
  def about
    @page = Page.find_by(title: "About")
    @content = @page.content_blocks
  end

  def work
    @page = Page.find_by(title: "Work")
    @content = @page.content_blocks
  end

  def contact
  end
end
