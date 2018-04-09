3.times do |topic|
  Topic.create!(
    title: "Topic #{topic+1}"
  )
end

puts "3 topics created"


10.times do |blog|
  Blog.create!(
    title: "Rails #{blog+1}",
    body: "Body body body #{blog+1}",
    topic_id: Topic.last.id
  )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill+1}",
    percent_utilized: (skill+1)*8
  )
end
puts "5 skills created"

8.times do |portfolio|
  Portfolio.create!(
    title: "Ruby on Rails title: #{portfolio+1}",
    subtitle: "My great service #{portfolio+1}",
    body: "body body body #{portfolio+1}",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end
puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology+1}"
    )
end

puts "3 technologies created"