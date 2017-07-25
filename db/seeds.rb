# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(
name: 'Calendar',
description: 'Yearly calendar at the bottom of each sheet',
price_in_cents: 1200
)
Product.create(
name: 'Ball Pens',
description: 'Needle point tip.',
price_in_cents: 1699
)
Product.create(
name: 'Umbrella',
description: 'designed with 9 reinforced fiverglass ribs',
price_in_cents: 2299
)
