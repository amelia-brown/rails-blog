about = Page.create!(title: "about")
work = Page.create!(title: "work")

User.create!(name: "Amelia", email: "amelia@example.com", password: "example")

about.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")
work.content_blocks.create!(content: "Lorem Ipsum")

12.times do
  content = Faker::Lorem.paragraphs(3, true).join("")
  User.find(1).posts.create!(content: "<p>" + content + "</p>" + "<p>" + content + "</p>" + "<p>" + content + "</p>",
                             title: "Example blog post",
                             picture: File.open(File.join(Rails.root, 'app', 'assets', 'images', '1386957883070.jpg')))
end
