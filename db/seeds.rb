# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.destroy_all

Location.create({
  base: "Spangdahlem AB",
  unit: "52 Fighter Wing",
  country: "Germany",
  state: nil,
  oconus: true,
  pascode: "1FGD6578",
  billets: 32
  })
