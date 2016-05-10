about = Page.create!(title: "about")
work = Page.create!(title: "work")
paragraphs= ""
Faker::Lorem.paragraphs(3, true).collect! do |item|
  paragraphs = paragraphs + "<p>" + item + "</p>"
end

User.create!(name: "Example User", email: "amelia.brown389@gmail.com", password: "example")

about.content_blocks.create!(content: paragraphs)
work.content_blocks.create!(content: "<p>Are you looking to have compelling content that aligns with your brand’s values? I can create content that fits your vision.</p>")
work.content_blocks.create!(content: "<p>Are you looking for expert advice and recommendations on the planning, development, and management of your content? I can help you navigate some important decisions and develop the most suitable content strategy.</p>")
work.content_blocks.create!(content: "<p>Do you have content that you feel needs to be improved and polished? I can edit your content and get it ready for publication.</p>")


12.times do
  User.find(1).posts.create!(content: paragraphs,
                             title: "Example blog post",
                             picture: File.open(File.join(Rails.root, 'app', 'assets', 'images', '1386957883070.jpg')))
end
