module PostsHelper
  def post_time
    date = @post.created_at
    date.strftime("%A %B %w, %Y")
  end
  def truncate_content(content)
    truncate_html(content)
  end
end
