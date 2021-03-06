Style.destroy_all
Brewer.destroy_all
Beer.destroy_all

pale_lager = Style.create(name: "Pale Lager")

pilsner = Style.create(
	name: "Pilsner"
	)

light_lager = Style.create(
	name: "Light Lager"
	)

dark_lager = Style.create(
	name: "Dark Lager"
	)

porter = Style.create(
	name: "Porter"
	)

stout = Style.create(
	name: "Stout"
	)

witbier = Style.create(
	name: "Witbier"
	)

brown_ale = Style.create(
	name: "Brown Ale"
	)


stone = Brewer.create(
	brewery: "Stone Brewing Company",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/stone-logo.jpg?_subject_uid=398725007&w=AAD_dGtgtVG20DhNfwqD4QbUhYmD_7BgWRtwv9RRbnGPQg", 
  address: "1999 Citracado Parkway, Escondido, CA",
  zip_code: 92029,
  website: "http://www.stonebrewing.com/"
	)


lagunitas = Brewer.create(
	brewery: "Lagunitas Brewing Company",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/lagunitas-logo.jpg?_subject_uid=398725007&w=AACV8FGbOUYtVsqLr6QQhFgrZIE3VfdRfUKBeUkovHvMPQ",
  address: "1280 North McDowell Boulevard, Petaluma, CA",
  zip_code: 94954,
  website: "http://www.lagunitas.com/"
	)


allagash = Brewer.create(
	brewery: "Allagash Brewing Company",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/allagash-logo.jpg?_subject_uid=398725007&w=AACox53IWGhDE1DC6DxU7dWDIjzMZWqwniODGMWLUHLgCg",
  address: "50 Industrial Way, Portland, ME,",
  zip_code: 04103,
  website: "http://www.allagash.com/"
	)


brooklyn = Brewer.create(
	brewery: "Brooklyn Brewery",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/brooklyn-logo.png?_subject_uid=398725007&w=AAAi9L1n2a1IOSsWLl3RpjlJRj4hz_ndcE0r5KC3vPrU6w",
  address: "79 North Eleventh Street, Brooklyn, NY",
  zip_code: 11249,
  website: "http://www.brooklynbrewery.com/"
	)


anchor = Brewer.create(
	brewery: "Anchor Brewing Company",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/anchor-logo.jpg?_subject_uid=398725007&w=AAAZZYvfXRbiCEprxIKZszbtO9fBq3_a4iTciex01yP_Vg",
  address: "1705 Mariposa Street, San Francisco, CA",
  zip_code: 94107,
  website: "http://www.anchorbrewing.com/"
	)

stone_arrogant_bastard = Beer.create(
  name: "Stone Arrogant Bastard Ale",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/arrogant_bastard.jpg?_subject_uid=398725007&w=AAAkijfdyOi75Ri3d_8q5Bmg27wM86AtrR3ZTafYZ058kQ",
  abv: 7.20,
  availability: "Year-round",
  description: "This is an aggressive ale. You probably won't like it. It is quite doubtful that you have the taste or sophistication to be able to appreciate an ale of this quality and depth. We would suggest that you stick to safer and more familiar territory–maybe something with a multi-million dollar ad campaign aimed at convincing you it’s made in a little brewery, or one that implies that their tasteless fizzy yellow beverage will give you more sex appeal. Perhaps you think multi-million dollar ad campaigns make things taste better. Perhaps you're mouthing your words as you read this. At Stone Brewing, we believe that pandering to the lowest common denominator represents the height of tyranny - a virtual form of keeping the consumer barefoot and stupid. Brought forth upon an unsuspecting public in 1997, Arrogant Bastard Ale openly challenged the tyrannical overlords who were brazenly attempting to keep Americans chained in the shackles of poor taste. As the progenitor of its style, Arrogant Bastard Ale has reveled in its unprecedented and uncompromising celebration of intensity. There have been many nods to Arrogant Bastard Ale…even outright attempts to copy it… but only one can ever embody the true nature of liquid Arrogance!",
  style: brown_ale,
  brewer: stone
  )

stone_coffee_milk_stout = Beer.create(
  name: "Stone Coffee Milk Stout",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/stone_coffee_milk_stout.jpg?_subject_uid=398725007&w=AADrzNGvpcP4EP7aSn9J5I2Tz2p47o6F4ccyyMeg09M0NQ",
  abv: 4.20,
  availability: "Summer",
  description: "Brian Gallagher, a brewer who learned the art of fermentation in the UK, used the beer you now hold, a New World take on a traditional Enlgish milk stout, as his vehicle for personal expression. Though Stone Brewing Co. is well known for massive stouts such as the venerable Stone Imperial Russian Stout (10.6% abv) and the more recent collaborative w00tstouts (13%-13.5% abv), at a mere 4.2% abv Stone Coffee Milk Stout presents a walk on the significantly milder, far opposite side of the stout spectrum. Rather than being as bombastic as it¹s MUCH higher alcohol cousins, this beer is even on the palate, bringing on a hint of coffee with a highly drinkable yet quite modest backdrop of chocolate and roasty notes. At a mere 4.2% ABV, it's the lowest-alcohol bottled beer we've released in 15 years (the previous being our 3.9% abv one-off release called Lee's Mild in 1999), and you can expect a correspondingly modest body and mouthfeel. Additionally, while some milk stouts have more residual lactose sugar, we opted for a less sweet approach to the category, so you'll notice it finishes fairly dry on the palate. Want more body or a more intense flavor profile? We got that, but this ain't it. This is the lil' one in our stable. Enjoy it for what it is and for what it's not. Originally brewed as a limited-edition offering at Stone Brewing World Bistro & Gardens – Liberty Station, this coffee-laced milk stout quickly became a favorite among Gallagher’s peers. Made bittwersweet and creamy while remaining smooth and easy-drinking thanks to the addition of milk surgar, it’s clear why this is a brew we needed to share with fans everywhere.",
  style: stout,
  brewer: stone
  )

stone_go_to_ipa = Beer.create(
  name: "Stone Go To IPA",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/stone-go-to-ipa.jpg?_subject_uid=398725007&w=AADFNWiZOA9d_D4ODZbxgVDp7cvNfThTSDbTXbcxg0O60Q",
  abv: 4.50,
  availability: "Year-round",
  description: "It's no secret we helped create and popularize West Coast style IPAs (since 1997), Double IPAs (since 2000) & Triple IPAs (since 2006). In fact, IPAs of every ilk imaginable are our bread and (hop) butter at Stone Brewing Co., but we'll be the first to admit that a night of subsisting solely on big IPAs can be a short one. Enter Stone Go To IPA, our session IPA, boasting all the gloriously bitter, citrusy, piney flavor of our bigger / industrial-strength IPAs, but with a significantly lower alcohol-by-volume (4.5%) allowing IPA fans like us to enjoy more of this amazingly, hoppy beer over a longer session, without giving up any of that gloriously crave-able botanically-driven dankness. Well, OK, when you compare to our bigger IPAs you find that you give up some, as that's what happens when you dramatically lower the abv. And while we work hard to bend the time/space/abv intensity continuum, we've admittedly not yet learned to break it. This comes damn close though.",
  style: brown_ale,
  brewer: stone
  )

lagunitas_little_sumpin = Beer.create(
  name: "Lagunitas A Little Sumpin' Sumpin' Ale",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/langunitas-little-sumpin.jpg?_subject_uid=398725007&w=AAAH3SL950S2VNYNjcpHu_qAfkRQYBvg1idmK0k7pYiwkw",
  abv: 7.50,
  availability: "Year-round",
  description: "A truly unique style featuring a strong hop finish on a silky body. A filtered pale wheat ale that is great for both IPA and wheat beer fans.",
  style: witbier,
  brewer: lagunitas
  )

lagunitas_hairy_eyeball = Beer.create(
  name: "Lagunitas Hairy Eyeball Ale",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/hairy-eyeball-lagunitas.jpg?_subject_uid=398725007&w=AADkVfsHHYBVOvY6bC_wsCpJ0Ki1s7KFktVTTEacnPt7jg",
  abv: 9.40,
  availability: "Winter",
  description: "A roasty, toasty, malty, hangover-halting beer. Especially formulated for when you wake up feelin’ like you need to shave your eyeballs to see the new day.",
  style: brown_ale,
  brewer: lagunitas
  )

lagunitas_sucks = Beer.create(
  name: "Lagunitas Sucks (Brown Shugga Substitute Ale)",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/lagunitas-sucks.jpg?_subject_uid=398725007&w=AADOWu7anoCTmbKQfp8oGSxByjKcd_WLj98Lyz5RNR-TqQ",
  abv: 7.85,
  availability: "Year-round",
  description: "This sad holiday season we didn’t have the brewing capacity to make our favorite seasonal brew, the widely feared BrownShugga’ Ale. You see we had a couple of really good years (thank you very much) and so heading into this season while we are awaiting the January delivery of a new brewhouse we are jammin’ along brewing 80 barrels of IPA and PILS and such every 3 hours. A couple of months back we realized that since we can only brew a mere 60 barrels of Shugga’ every 5 hours, that we were seriously screwed. For every case of Shugga’ brewed, we’d short 3 cases of our favorite daily beers. It’s a drag. This year, we brewed something that we think is also cool and brews more like our daily brews. The new brewhouse will help insure this kind of failure never happens again. It’s a mess that we can not brew our BrownShugga’ this year and we suck for not doing it. There is nothing cool about screwing this up this badly and we know it. Maybe we can sue our own sorry selves. There is no joy in our hearts this holiday and the best we can hope for is a quick and merciful end. F*@& us. This totally blows. Whatever. We freaking munch moldy donkey butt and we just want it to be all over... So this substitute beer is a ‘Cereal Medley’ of Barley, Rye, Wheat, and Oats…. Full of complexishness from the 4 grains, and weighing in at 7.85% abv, Then joyously dry-hopped for that big aroma and resinous hop flavor.",
  style: brown_ale,
  brewer: lagunitas
  )

allagash_white = Beer.create(
  name: "Allagash White",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/allagash-white.jpg?_subject_uid=398725007&w=AAA1tPqJdqgTTIswlyqzwj1Me6s0PSn_SmC5_R_JaCXo8A",
  abv: 5.00,
  availability: "Year-round",
  description: "Our interpretation of a traditional Belgian wheat beer. Brewed with a generous portion of wheat and spiced with coriander and Curacao orange peel, this beer is fruity, refreshing and slightly cloudy in appearance.",
  style: witbier,
  brewer: allagash
  )

allagash_black = Beer.create(
  name: "Allagash Black",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/allagash_black.jpg?_subject_uid=398725007&w=AAB52SWHKhZeID0rueVnXfSVpeLqunmRkpm1dznzl9FoiQ",
  abv: 7.50,
  availability: "Year-round",
  description: "Allagash Black is a Belgian style stout brewed with 2 Row barley, torrified wheat, oats, both roasted and chocolate malt and a generous portion of dark caramelized candi sugar. The silky mouth feel is a great balance to the roasted character, coffee and dark chocolate notes expressed throughout this beer.",
  style: stout,
  brewer: allagash
  )

allagash_curieux = Beer.create(
  name: "Allagash Curieux (Bourbon Barrel-Aged Tripel)",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/qllagash-curieux.jpg?_subject_uid=398725007&w=AABQ0CLNjO71lib0WfjHPFM26acOPdiSOkomSINRClxiBw",
  abv: 11.00,
  availability: "Year-round",
  description: "Allagash Curieux was the first foray into barrel aging. Curieux is made by aging our Tripel Ale in Jim Beam bourbon barrels for eight weeks in our cold cellars. The aged beer is then blended back with a portion of fresh Tripel. The resulting beer is soft with coconut and vanilla notes, with hints of bourbon.",
  style: brown_ale,
  brewer: allagash
  )

brooklyn_pilsner = Beer.create(
  name: "Brooklyn Pilsner",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/booklyn-pilsner.JPG?_subject_uid=398725007&w=AAAZmtLmHOVCqA76Ce0REnlfbILLqYQ0J8DfY95dJl3onQ",
  abv: 5.10,
  availability: "Year-round",
  description: "Brooklyn Pilsner is a refreshing golden lager beer, brewed in the style favored by New York’s pre-prohibition brewers. In the 1840’s, the pilsner style emerged from central Europe to become the world’s most popular style of beer. Like its ancestors, Brooklyn Pilsner is traditionally brewed from the finest German two-row barley malts. German-grown Perle and Hallertauer hops provide a crisp, snappy bitterness and fresh, floral aroma. The flavor of the malt comes through in the finish. We ferment Brooklyn Pilsner at cool temperatures, and then give it a long, gentle maturation (lagering), which results in a beer of superior complexity and smoothness. We believe that you will find there to be none finer. Unlike mass-marketed so-called pilsners, Brooklyn Pilsner does not contain cheap fillers such as corn or rice, nor does it contain any preservatives or stabilizers. Brooklyn Pilsner is the real thing.",
  style: pilsner,
  brewer: brooklyn
  )

brooklyn_black_ops = Beer.create(
  name: "Brooklyn Black OPS",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/brooklyn-black-ops.jpg?_subject_uid=398725007&w=AACCW6HPKZaee4PjTimpSwSeu1MVnXvAGWV1tEwrh9WVbg",
  abv: 10.50,
  availability: "Winter",
  description: "Brooklyn Black Ops does not exist. However, if it did exist, it would be a strong stout concocted by the Brooklyn brewing team under cover of secrecy and hidden from everyone else at the brewery. The myth is that this supposed 'Black Ops' was then aged for four months in bourbon barrels, bottled flat, and re-fermented with Champagne yeast. Presumably such a beer would raise a rich, fluffy dark brown head and it would combine chocolate and coffee flavors with a rich underpinning of vanilla-like bourbon notes. A beer like that would be mighty nice, but it would be hard to make more than few cases – it could never be sold or released to the public. They say that the brewmaster revealed the beer to a few other people at the brewery only after it had been barreled. The rumor going around is that the brewery plans to drink the beer themselves over the holidays and give some to their family and friends. That’s what they say. But frankly, there’s no evidence for any of this. This beer is obviously a figment of people’s fervent imaginations. People tend to get loopy around the holidays. Everyone go home now – there’s nothing to see here.",
  style: stout,
  brewer: brooklyn
  )

brooklyn_blast = Beer.create(
  name: "Brooklyn Blast!",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/brooklyn-blast.jpg?_subject_uid=398725007&w=AABC-EGlN5VEl9mQ9anRseDbi4ASlptVDJFuomUIAkf0Pw",
  abv: 8.40,
  availability: "Year-round",
  description: "We brew our beer in New York, about halfway between the hop fields of the Pacific Northwest and the hop fields of Kent, England. So we use earthy English hops to build the foundation and bright citrusy American hops to bring the noise in the rambunctious IPA we call BLAST! British Maris Otter and German Pilsner malts lends solidity, balance and bready flavors to brace up a beer that’s beautifully hoppy, strangely quaffable and oddly compelling. Minerally hop bitterness is followed by a shock wave of flavor and aroma. You won’t even know what hit you.",
  style: brown_ale,
  brewer: brooklyn
  )

anchor_bock = Beer.create(
  name: "Anchor Bock Beer",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/anchor-bock-beer.jpg?_subject_uid=398725007&w=AABZanqSNTRnvXHn6mu3IF4cjXfQFQxR7lKv8uwHQO2YCw",
  abv: 5.50,
  availability: "Year-round",
  description: "The dark satiny texture of Anchor Bock®, with its rich hints of chocolate, caramel and roasted barley, is our interpretation of the historically strong German beers that signal the coming of spring. Anchor Bock® Beer is brewed from a complex blend of malts, and fresh, whole-cone hops. In the ancient bock tradition, the dark-colored craft brew is released in time for springtime celebrations. Bock beers are believed to have originated in the town of Einbeck, Germany and traditionally feature a goat on their labels. The term, “bock” occurs in several Germanic languages and roughly translates to “billy goat”, but there are some unlikely alternatives. Followers of the zodiac have described it as a beer for Capricorn, the time when, as the days grow longer, brewers brew their bock beers in anticipation of the coming of spring. Over time, bock has come to define a beer darker and stronger than a brewery's “regular” brew. One with, you might say, the kick of a goat behind it.",
  style: dark_lager,
  brewer: anchor
  )

anchor_steam = Beer.create(
  name: "Anchor Steam Beer",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/anchor-steam.png?_subject_uid=398725007&w=AABu9YQ8fNDZv8tpsXyeNTuT44juk850nnSQaxCHWGkPTg",
  abv: 4.90,
  availability: "Year-round",
  description: "Anchor Steam® Beer owes its deep amber color, thick, creamy head, and rich, distinctive flavor to a historic brewing process like none other. It is a process that combines deep respect for craft brewing tradition with many decades of evolution to arrive at a unique approach: a blend of pale and caramel malts, fermentation with lager yeast at warmer ale temperatures in shallow open-air fermenters, and gentle carbonation in our cellars through an all-natural process called kräusening. Anchor Steam® Beer derives its unusual name from the 19th century when “steam” was a nickname for beer brewed on the West Coast of America under primitive conditions and without ice. While the origin of the name remains shrouded in mystery, it likely relates to the original practice of fermenting the beer on San Francisco’s rooftops in a cool climate. In lieu of ice, the foggy night air naturally cooled the fermenting beer, creating steam off the warm open pans. Once a nickname for any Californian or West Coast beer brewed under these conditions, today the name “steam” is a trademark of Anchor Brewing and applies only to the singular process and taste of our flagship brand - San Francisco’s original Anchor Steam® Beer. The classic of American brewing tradition since 1896.",
  style: light_lager,
  brewer: anchor
  )

anchor_ipa = Beer.create(
  name: "Anchor IPA",
  image_url: "https://dl-web.dropbox.com/get/wdi/project-3/images/anchor-ipa.png?_subject_uid=398725007&w=AABZXod425_90X9zlTe7xyHuFfjYV_mui9_SUepezjX2wg",
  abv: 6.50,
  availability: "Year-round",
  description: "The California Gold Rush lured thousands west to 'see the elephant,' a 19th-century metaphor for the hopeful but risky pursuit of happiness, adventure, and fortune. As early as 1849, India Pale Ale - prepared by British brewers for export to India by adding dry hops to barrels of hoppy ale - was also heading west, from England around the Horn to San Francisco. Thirsty ‘49ers savored the best imported IPAs, but it wasn’t until 1975 that Anchor, Americas' original craft brewery, pioneered the revival of dry-hopped handmade ales. Now, that tradition fast-forwards to an adventurous new brew: Anchor IPA™.Anchor IPA™ is made with 2-row barley malt and fresh whole-cone hops, its bright amber color, distinctively complex aroma, spiky bitterness, malty depth, and clean finish unite to create a uniquely flavorful, memorable, and timeless craft IPA.",
  style: brown_ale,
  brewer: anchor
  )