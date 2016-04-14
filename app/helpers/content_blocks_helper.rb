module ContentBlocksHelper
  def edit_link_text(status)
    status.editable? ? " " : "edit"
  end
end
