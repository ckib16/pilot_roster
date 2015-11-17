# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.destroy_all

bases = [
  {
    base:       "Kunsan AB",
    unit:       "8th Fighter Wing",
    country:    "South Korea",
    state:      nil,
    oconus:     true,
    pascode:    "WP69H616",
    billets:    64,
    emblem_url: "8th_Fighter_Wing_Kunsan.png"
  },
  {
    base:       "Shaw AFB",
    unit:       "20th Fighter Wing",
    country:    "USA",
    state:      "South Carolina",
    oconus:     false,
    pascode:    "SH69H618",
    billets:    96,
    emblem_url: "20th_Fighter_Wing_Shaw.png"
  },
  {
    base:       "Aviano AB",
    unit:       "31st Fighter Wing",
    country:    "Italy",
    state:      nil,
    oconus:     true,
    pascode:    "AV0169H6",
    billets:    64,
    emblem_url: "31st_Fighter_Wing_Aviano.png"
  },
  {
    base:       "Misawa AB",
    unit:       "35th Fighter Wing",
    country:    "Japan",
    state:      nil,
    oconus:     true,
    pascode:    "MW69H618",
    billets:    64,
    emblem_url: "35th_Fighter_Wing_Misawa.png"
  },
  {
    base:       "Osan AB",
    unit:       "51st Fighter Wing",
    country:    "South Korea",
    state:      nil,
    oconus:     true,
    pascode:    "OS0169H6",
    billets:    32,
    emblem_url: "51st_Fighter_Wing_Osan.png"
  },
  {
    base:       "Spangdahlem AB",
    unit:       "52d Fighter Wing",
    country:    "Germany",
    state:      nil,
    oconus:     true,
    pascode:    "SPGD6578",
    billets:    32,
    emblem_url: "52d_Fighter_Wing_Spangdahlem.png"
  },
  {
    base:       "Luke AFB",
    unit:       "56th Fighter Wing",
    country:    "USA",
    state:      "Arizona",
    oconus:     false,
    pascode:    "LFGD6578",
    billets:    82,
    emblem_url: "56th_Fighter_Wing_Luke.png"
  },
  {
    base:       "Hill AFB",
    unit:       "388th Fighter Wing",
    country:    "USA",
    state:      "Utah",
    oconus:     false,
    pascode:    "HI69H616",
    billets:    96,
    emblem_url: "388th_Fighter_Wing_Hill.png"
  }
]

Location.create(bases)
