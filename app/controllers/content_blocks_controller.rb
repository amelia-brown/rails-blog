class ContentBlocksController < ApplicationController
  def update
    @page = Page.find(params[:page])
    @content_block = @page.content_blocks.find(params[:id])
  end
end
