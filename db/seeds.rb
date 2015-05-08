# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#add comment for test branch

Style.create(
	name: "Pale Lager"
	)

Style.create(
	name: "Pilsner"
	)

Style.create(
	name: "Light Lager"
	)

Style.create(
	name: "Dark Lager"
	)

Style.create(
	name: "Porter"
	)

Style.create(
	name: "Stout"
	)

Style.create(
	name: "Witbier"
	)

Style.create(
	name: "Brown Ale"
	)

Brewer.create(
	brewery: "Stone Brewing Company",
  address: "1999 Citracado Parkway, Escondido, CA",
  zip_code: 92029,
  website: "http://www.stonebrewing.com/"
	)

Brewer.create(
	brewery: "Lagunitas Brewing Company",
  address: "1280 North McDowell Boulevard, Petaluma, CA",
  zip_code: 94954,
  website: "http://www.lagunitas.com/"
	)

Brewer.create(
	brewery: "Allagash Brewing Company",
  address: "50 Industrial Way, Portland, ME,",
  zip_code: 04103,
  website: "http://www.allagash.com/"
	)

Brewer.create(
	brewery: "Brooklyn Brewery",
  address: "79 North Eleventh Street, Brooklyn, NY",
  zip_code: 11249,
  website: "http://www.brooklynbrewery.com/"
	)

Brewer.create(
	brewery: "Anchor Brewing Company",
  address: "1705 Mariposa Street, San Francisco, CA",
  zip_code: 94107,
  website: "http://www.anchorbrewing.com/"
	)







