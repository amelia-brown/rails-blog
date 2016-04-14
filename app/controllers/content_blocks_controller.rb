class ContentBlocksController < ApplicationController
  def toggle_edit
    @content_block = ContentBlocks.find(params[:id])
    @content_block.toggle!(:editable)
    render :nothing => true
  end
end
