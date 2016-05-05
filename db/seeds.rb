about = Page.create!(title: "about")
work = Page.create!(title: "work")
paragraphs= ""
Faker::Lorem.paragraphs(3, true).collect! do |item|
  paragraphs = paragraphs + "<p>" + item + "</p>"
end

User.create!(name: "Amelia", email: "amelia@example.com", password: "example")

about.content_blocks.create!(content: paragraphs)
work.content_blocks.create!(content: paragraphs)
work.content_blocks.create!(content: paragraphs)
work.content_blocks.create!(content: paragraphs)


12.times do
  User.find(1).posts.create!(content: paragraphs,
                             title: "Example blog post",
                             picture: File.open(File.join(Rails.root, 'app', 'assets', 'images', '1386957883070.jpg')))
end
