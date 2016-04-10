about = Page.create!(title: "About")
work = Page.create!(title: "Work")

about.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")

