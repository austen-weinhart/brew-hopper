Style.destroy_all
Brewer.destroy_all
Beer.destroy_all

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
  image_url: "http://www.stonebrewing.com/mediaart/Circ_garg_small.jpg", 
  address: "1999 Citracado Parkway, Escondido, CA",
  zip_code: 92029,
  website: "http://www.stonebrewing.com/"
	)

Brewer.create(
  brewery: "Lagunitas Brewing Company",
  image_url: "http://beerstreetjournal.com/wp-content/uploads/Lagunitas-Logo.jpg",
  address: "1280 North McDowell Boulevard, Petaluma, CA",
  zip_code: 94954,
  website: "http://www.lagunitas.com/"
	)

Brewer.create(
  brewery: "Allagash Brewing Company",
  image_url: "http://bridgeviewtavern.com/wp-content/uploads/2014/10/Allagash-Logo-Maroon.jpg",
  address: "50 Industrial Way, Portland, ME,",
  zip_code: 04103,
  website: "http://www.allagash.com/"
	)

Brewer.create(
  brewery: "Brooklyn Brewery",
  image_url: "http://brooklynbrewery.com/blog/wp-content/uploads/2013/11/Brewery-Logo-PNG.png",
  address: "79 North Eleventh Street, Brooklyn, NY",
  zip_code: 11249,
  website: "http://www.brooklynbrewery.com/"
	)

Brewer.create(
  brewery: "Anchor Brewing Company",
  image_url: "http://ironhorsedc.com/wp-content/uploads/Anchor-Brewing-Oval-Logo-Detailed.jpg",
  address: "1705 Mariposa Street, San Francisco, CA",
  zip_code: 94107,
  website: "http://www.anchorbrewing.com/"
	)

Beer.create(
  name: "Arrogant Bastard Ale",
  image_url: "http://www.prosportstickers.com/product_images/r/arrogant_bastard_ale_bottle_and_glass_sticker__79225.jpg",
  abv: 7.20,
  availability: "Year-round",
  description: "This is an aggressive ale. You probably won't like it. It is quite doubtful that you have the taste or sophistication to be able to appreciate an ale of this quality and depth. We would suggest that you stick to safer and more familiar territory–maybe something with a multi-million dollar ad campaign aimed at convincing you it’s made in a little brewery, or one that implies that their tasteless fizzy yellow beverage will give you more sex appeal. Perhaps you think multi-million dollar ad campaigns make things taste better. Perhaps you're mouthing your words as you read this. At Stone Brewing, we believe that pandering to the lowest common denominator represents the height of tyranny - a virtual form of keeping the consumer barefoot and stupid. Brought forth upon an unsuspecting public in 1997, Arrogant Bastard Ale openly challenged the tyrannical overlords who were brazenly attempting to keep Americans chained in the shackles of poor taste. As the progenitor of its style, Arrogant Bastard Ale has reveled in its unprecedented and uncompromising celebration of intensity. There have been many nods to Arrogant Bastard Ale…even outright attempts to copy it… but only one can ever embody the true nature of liquid Arrogance!"
  )





