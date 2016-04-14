require 'test_helper'

class ContentBlockTest < ActiveSupport::TestCase
    def setup
    @page = Page.find_by(title: "about")
    @content_block = ContentBlock.first
  end
  test "should be valid" do
    assert @content_block.valid?
  end
  test "page id should be present" do
    @content_block.page_id = nil
    assert_not @content_block.valid?
  end
end
