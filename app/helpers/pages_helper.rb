module PagesHelper
  def edit_link_text(status)
    status.editable? ? " " : "edit"
  end

  def page_is_about
    @current_page = request.env['PATH_INFO']
    @current_page === "/about"
  end
end
