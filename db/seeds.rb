# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["michael and jessica", "john and jill", "alex and debbie", "jeremy and sara"].each do |dancers|
  Contestant.create! :name => dancers
  end
["Judge 1", "Judge 2", "Judge 3"].each do |experts|
  Judge.create! :name => experts
  end