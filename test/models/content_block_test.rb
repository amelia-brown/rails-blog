require 'test_helper'

class ContentBlockTest < ActiveSupport::TestCase
  def setup
    @page = Page.find_by(title: "About")
    @content_block = ContentBlock.build(content: "Lorem ipsum", page_id: @page.id)
  end
  test "should be valid" do
    assert @content_block.valid?
  end
  test "page id should be present" do
    @content_block.user_id = nil
    assert_not @content_block.valid?
  end
end
