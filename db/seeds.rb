puts "Seeding paintings..."

# Seed your database here
Artist.create(name: "Jianyu", style: "Modernism", year_born: 1990)
Artist.create(name: "Persephone", style: "Impressionism" , year_born: 1980)
Artist.create(name: "Zara", style: "Abstract" , year_born: 1995)
Artist.create(name: "Lionel", style: "Expressionism", year_born: 2000)
Artist.create(name: "Sterling", style: "Surrealism", year_born: 2005)

Painting.create(title: "Yellow Square", year_created: 2000, in_exhibition: true, artist_id: 1)
Painting.create(title: "Fractals", year_created: 1995, in_exhibition: true, artist_id: 2)
Painting.create(title: "Winter Storm", year_created: 2015, in_exhibition: false, artist_id: 3)
Painting.create(title: "Altered State of Mind", year_created: 2020, in_exhibition: false, artist_id: 4)
Painting.create(title: "Head in the Clouds", year_created: 2020, in_exhibition: false, artist_id: 5)

Painting.create(title: "Sepia Shades", year_created: 2015, in_exhibition: true, artist_id: 1)
Painting.create(title: "Shattered", year_created: 2001, in_exhibition: false, artist_id: 2)
Painting.create(title: "InsideOut", year_created: 2012, in_exhibition: true, artist_id: 3)
Painting.create(title: "Psychedelic Dance", year_created: 2020, in_exhibition: true, artist_id: 4)
Painting.create(title: "Hat in the Cat", year_created: 2020, in_exhibition: true, artist_id: 5)

Painting.create(title: "Stairway to the Ladder that Leads to Nowhere", year_created: 2013, in_exhibition: true, artist_id: 1)
Painting.create(title: "Crystal Clouds", year_created: 1997, in_exhibition: true, artist_id: 2)
Painting.create(title: "Midknight Ruin", year_created: 2008, in_exhibition: true, artist_id: 2)
Painting.create(title: "Covid Lockdown", year_created: 2020, in_exhibition: false, artist_id: 3)
Painting.create(title: "Sunset Wave", year_created: 2017, in_exhibition: true, artist_id: 4)
Painting.create(title: "Theory of Strings", year_created: 2019, in_exhibition: true, artist_id: 5)
Painting.create(title: "Tangerine Dreams", year_created: 2016, in_exhibition: true, artist_id: 5)

puts "✅ Done seeding!"
