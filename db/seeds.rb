# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seed Topic data
3.times do |n|
  Topic.create!(
    title: "Topic Title #{n + 1}"
  )
end

puts "3 topics created."
# Seed Blogs data
10.times do |n|
  Blog.create!(
    title: "Blog Title #{n + 1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
           Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
           Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
           laborum.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created."

5.times do |n|
  Skill.create!(
    title: "Skill Title #{n + 1}",
    percent_utilized: 12 + n

  )
end
puts "5 skills created."
8.times do |n|
  Portfolio.create!(
    title: "Portfolio Title #{n + 1}",
    subtitle:"Ruby On Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image:"https://via.placeholder.com/600x400",
    thumb_image:"https://via.placeholder.com/350x200"
  )
end

1.times do |n|
  Portfolio.create!(
    title: "Portfolio Title #{n + 1}",
    subtitle:"Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image:"https://via.placeholder.com/600x400",
    thumb_image:"https://via.placeholder.com/350x200"
  )
end

puts "9 portfolios created."

# 3.times do |n|
#   Technology.create!(
#     name: "Techonology Title #{n + 1}",
#     portfolio_id: Portfolio.last.id
#   )
# end

3.times do |n|
  Portfolio.last.technologies.create!(
    name: "Techonology Title #{n + 1}"
  )
end

puts "3 technologies created."