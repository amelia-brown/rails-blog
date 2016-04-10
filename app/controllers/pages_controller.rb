class PagesController < ApplicationController
  before_action :logged_in_user, only: [:edit]
  def show
    @about = Pages.find_by(title: "About")
    @work = Pages.find_by(title: "Work")

    @about_content = @about.content_blocks
    @work_content = @work.content_blocks
  end
  def edit

  end
  def home
  end

  def about
  end

  def work
  end

  def contact
  end
end
