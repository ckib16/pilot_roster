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
  unit: "52d Fighter Wing",
  country: "Germany",
  state: nil,
  oconus: true,
  pascode: "SPGD6578",
  billets: 32,
  emblem_url: "52d_Fighter_Wing.png"
  })

Location.create({
  base: "Shaw AFB",
  unit: "20th Fighter Wing",
  country: "USA",
  state: "South Carolina",
  oconus: false,
  pascode: "SH69H618",
  billets: 96,
  emblem_url: "20th_Fighter_Wing.png"
  })
