module PostsHelper

  def post_time
    date = @post.created_at
    date.strftime("%A %B %w, %Y")
  end
end
