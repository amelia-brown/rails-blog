about = Page.create!(title: "about")
work = Page.create!(title: "work")

User.create!(name: "Amelia", email: "amelia@example.com", password: "example")

about.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")

content = Faker::Lorem.sentence(12)
12.times do
  User.find(1).posts.create!(content: content, title: "Example blog post")
end
