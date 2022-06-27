# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BLOG_COUNT = 10
SKILL_COUNT = 5
PORTFOLIO_COUNT = 9

BLOG_COUNT.times do |blogID|
    Blog.create!(
        title: "Blog Numebr #{blogID}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ipsum ipsum, volutpat in dignissim id, congue vitae sem. Phasellus auctor sollicitudin elit vel dictum. Maecenas sit amet volutpat diam. Vivamus et varius nisl. Nunc at velit dictum, vehicula quam a, molestie nisi. Sed rutrum lacus diam, vitae pharetra lorem malesuada."
    )
end

puts ("#{BLOG_COUNT} blogs are created!")

SKILL_COUNT.times do |skillID|
    Skill.create!(
        title: "Skill Number #{skillID}",
        percent_completed: "#{skillID*5+10}"
    )

end

puts ("#{SKILL_COUNT} skills are created!")

PORTFOLIO_COUNT.times do |portfolioID|
    Portfolio.create!(
        title: "Portfolio Number #{portfolioID}",
        subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ipsum ipsum, volutpat in dignissim id, congue vitae sem.",
        image: "https://via.placeholder.com/150x150"
    )

end

puts ("#{PORTFOLIO_COUNT} portfolios are created!")

puts ("#{BLOG_COUNT+SKILL_COUNT+PORTFOLIO_COUNT} records are created!")