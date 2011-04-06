# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

[
{:title => "Management", :description => "Managing", :deadline => "2012-2-2"},
{:title => "Programmer", :description => "Programming", :deadline => "2012-2-2"},
{:title => "Developer", :description => "Developing", :deadline => "2012-2-2"},
{:title => "Clerk", :description => "Clerking", :deadline => "2012-2-2"}
].each do |attrs|
  job = Job.find_or_create_by_title(attrs)
end

[
  {:name => "CSS"},
  {:name => "Web Developer"},
  {:name => "Mobile"},
].each do |attrs|
  category = Category.find_or_create_by_name(attrs)
end