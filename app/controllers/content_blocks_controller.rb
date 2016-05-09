class ContentBlocksController < ApplicationController
  def update
    @content_block = ContentBlock.find(params[:id])
    @content_block.update_attributes(update_params)
    redirect_to about_url
  end

  private
  def update_params
    params.require(:content_block).permit(:content)
  end
end
