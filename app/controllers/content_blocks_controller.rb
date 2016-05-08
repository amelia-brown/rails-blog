class ContentBlocksController < ApplicationController
  def update
    @page = request.env['PATH_INFO']
    if @page === "/about"
      @page = Page.find(1)
    elsif @page === '/work'
      @page = Page.find(2)
    end

    @content_block = @page.content_blocks.find(1)
    @post.update_attributes(content_block_params)
    redirect_to @page
  end
end
