json.array!(@content_blocks) do |content_block|
  json.extract! content_block, :content
  json.url content_blocks_url(content_block, format: :json)
end
