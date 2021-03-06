about = Page.create!(title: "about")
work = Page.create!(title: "work")
paragraphs= ""
Faker::Lorem.paragraphs(3, true).collect! do |item|
  paragraphs = paragraphs + "<p>" + item + "</p>"
end

User.create!(name: "Example User", email: "amelia.brown389@gmail.com", password: "example")

about.content_blocks.create!(content: paragraphs)
work.content_blocks.create!(content: "")
work.content_blocks.create!(content: "")
work.content_blocks.create!(content: "")


12.times do
  User.find(1).posts.create!(content: paragraphs,
                             title: "Example blog post",
                             picture: File.open(File.join(Rails.root, 'app', 'assets', 'images', '1386957883070.jpg')))
end
