# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

CSV.foreach("db/2015-current-lines.csv") do |row|
    Line.create letter: row[0], name: row[1]
end

# CSV.foreach("db/2014-west-coast-lines-list.csv") do |row|
#     WestCoastLine.create letter: row[0], name: row[1]
# end
