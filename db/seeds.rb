puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0655234937",
    category:     "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0658254937",
    category:     "chinese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0655254927",
    category:     "italian"
  },
  {
    name:         "Chez Momo",
    address:      "112 rue du Bourg 75008 Paris",
    phone_number: "0655874937",
    category:     "japanese"
  },
  {
    name:         "Kebab Nico",
    address:      "8 rue Texier 75005 Paris",
    phone_number: "0656374937",
    category:     "french"
  },
  {
    name:         "Le bistrot regent",
    address:      "place Gambetta 33000 Bordeaux",
    phone_number: "0655566427",
    category:     "belgian"
  }
]
Restaurant.create!(restaurants_attributes)
puts "Finished!"
