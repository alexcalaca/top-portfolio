# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |blog|
  Blog.create!(
    title: "Rails #{blog+1}",
    body: "Body body body #{blog+1}",
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

9.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio+1}",
    subtitle: "My great service #{portfolio+1}",
    body: "body body body #{portfolio+1}",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end
puts "9 portfolio items created"