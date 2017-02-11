# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |index|
  project = Project.create(name: "Ironhack#{index}",
                           description: "Description#{index}")
  2.times do |index2|
    project.time_entries.create(hours: index2,
                                minutes: index*index2,
                                date: Date.today,
                                comments: "Comment#{index2}")
  end
end
