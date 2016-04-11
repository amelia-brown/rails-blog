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
