about = Page.create!(title: "about")
work = Page.create!(title: "work")

about.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
