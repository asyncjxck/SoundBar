# create users
  jack = User.create(email: "jackson@me.com", password_digest: "1111")
  ruby = User.create(email: "ruby@kitten.com", password_digest: "2222")
  blue = User.create(email: "blue@fatcat.com", password_digest: "3333")
# create categories
  string = Category.create(name: "string")
  percussion = Category.create(name: "percussion")
  keyboard = Category.create(name: "keyboard")
# create brands
  # string
    martin = string.brands.create(name: "Martin", available: true)
    taylor = string.brands.create(name: "Taylor", available: true)
    gibson = string.brands.create(name: "Gibson", available: true)
    fender = string.brands.create(name: "Fender", available: true)
    ibanez = string.brands.create(name: "Ibanez", available: true)
  # percussion
    sonor = percussion.brands.create(name: "Sonor", available: true)
    gretsch = percussion.brands.create(name: "Gretsch", available: true)
    pearl = percussion.brands.create(name: "Pearl", available: true)
    ludwig = percussion.brands.create(name: "Ludwig", available: true)
    bdc = percussion.brands.create(name: "British Drum Company", available: true)
  # keyboard
    yamaha = keyboard.brands.create(name: "Yamaha", available: true)
    casio = keyboard.brands.create(name: "Casio", available: true)
    roland = keyboard.brands.create(name: "Roland", available: true)
    kawai = keyboard.brands.create(name: "Kawai", available: true)
    korg = keyboard.brands.create(name: "korg", available: true)
# create instruments
  # string
    # martin
      d28 = User.find(1).instruments.create(model: "D-28", instrument_type: "Guitar", description: "6-string Acoustic", price: "2,899.00", category_id: Category.find(1).id, brand_id: Brand.find(1).id)
      d45 = User.find(2).instruments.create(model: "D-45 Fire & Ice", instrument_type: "Guitar", description: "6-string Acoustic Special Edition", price: "31,999.00", category_id: Category.find(1).id, brand_id: Brand.find(1).id)
      d15 = User.find(3).instruments.create(model: "D-15", instrument_type: "Guitar", description: "6-string Auditorium Acoustic", price: "1,299.00", category_id: Category.find(1).id, brand_id: Brand.find(1).id)
    # taylor
      ce1 = User.find(1).instruments.create(model: "324ce", instrument_type: "Guitar", description: "6-string Electric/Acoustic", price: "2,199.00", category_id: Category.find(1).id, brand_id: Brand.find(2).id)
      ce2 = User.find(2).instruments.create(model: "814ce", instrument_type: "Guitar", description: "6-string Electric/Acoustic V-class", price: "3,999.00", category_id: Category.find(1).id, brand_id: Brand.find(2).id)
      gsmini = User.find(3).instruments.create(model: "GS Mini", instrument_type: "Guitar", description: "6-string Electric/Acoustic", price: "799.00", category_id: Category.find(1).id, brand_id: Brand.find(2).id)
    # gibson
      lespaul = User.find(1).instruments.create(model: "Les Paul '60s Bourbon Burst", instrument_type: "Guitar", description: "6-string Electric", price: "2,499.00", category_id: Category.find(1).id, brand_id: Brand.find(3).id)
      thunderbird = User.find(2).instruments.create(model: "Thunderbird", instrument_type: "Guitar", description: "4-string Electric Bass", price: "2,299.00", category_id: Category.find(1).id, brand_id: Brand.find(3).id)
      flyingv = User.find(3).instruments.create(model: "Flying V", instrument_type: "Guitar", description: "6-string Electric", price: "1,699.00", category_id: Category.find(1).id, brand_id: Brand.find(3).id)
    # fender
      tele = User.find(1).instruments.create(model: "Telecaster", instrument_type: "Guitar", description: "6-string Electric", price: "824.99", category_id: Category.find(1).id, brand_id: Brand.find(4).id)
      strat = User.find(2).instruments.create(model: "Stratocaster", instrument_type: "Guitar", description: "6-string Electric", price: "1,149.99", category_id: Category.find(1).id, brand_id: Brand.find(4).id)
      jazzmaster = User.find(3).instruments.create(model: "Jazzmaster", instrument_type: "Guitar", description: "6-string Electric", price: "1399.99", category_id: Category.find(1).id, brand_id: Brand.find(4).id)
    # ibanez
      s1070pbz = User.find(1).instruments.create(model: "S1070PBZ", instrument_type: "Guitar", description: "6-string Electric", price: "1,399.99", category_id: Category.find(1).id, brand_id: Brand.find(5).id)
      rg652ahm = User.find(2).instruments.create(model: "RG652AHM", instrument_type: "Guitar", description: "6-string Electric", price: "1,599.99", category_id: Category.find(1).id, brand_id: Brand.find(5).id)
      pn12e = User.find(3).instruments.create(model: "PN12E", instrument_type: "Guitar", description: "6-string Acoustic", price: "199.99", category_id: Category.find(1).id, brand_id: Brand.find(5).id)
  # percussion
    # sonor
      aq2 = User.find(1).instruments.create(model: "AQ2", instrument_type: "Drum Set", description: "Maple 5-Piece", price: "999.99", category_id: Category.find(2).id, brand_id: Brand.find(6).id)
      sq1 = User.find(2).instruments.create(model: "SQ1", instrument_type: "Drum Set", description: "3-Piece, 24 in. Kick", price: "2,899.99", category_id: Category.find(2).id, brand_id: Brand.find(6).id)
      vintage = User.find(3).instruments.create(model: "Sonor Vintage", instrument_type: "Drum Set", description: "3-Piece", price: "2,999.99", category_id: Category.find(2).id, brand_id: Brand.find(6).id)
    # gretsch
      catalina = User.find(1).instruments.create(model: "Catalina Club", instrument_type: "Drum Set", description: "Jazz 4-Piece", price: "699.99", category_id: Category.find(2).id, brand_id: Brand.find(7).id)
      brooklyn = User.find(2).instruments.create(model: "Brooklyn Micro", instrument_type: "Drum Set", description: "4-Piece", price: "1,899.57", category_id: Category.find(2).id, brand_id: Brand.find(7).id)
      renown = User.find(3).instruments.create(model: "Renown", instrument_type: "Drum Set", description: "4-Piece, 20 in. Kick", price: "699.99", category_id: Category.find(2).id, brand_id: Brand.find(7).id)
    # pearl
      cabana = User.find(1).instruments.create(model: "Cabana", instrument_type: "Cajon", description: "Cajon", price: "199.99", category_id: Category.find(2).id, brand_id: Brand.find(8).id)
      compact = User.find(2).instruments.create(model: "Compact Traveler", instrument_type: "Drum Set", description: "Traveler 2-piece", price: "215.00", category_id: Category.find(2).id, brand_id: Brand.find(8).id)
      decade = User.find(3).instruments.create(model: "Decade", instrument_type: "Drum Set", description: "Maple 3-piece", price: "639.00", category_id: Category.find(2).id, brand_id: Brand.find(8).id)
    # ludwig
      classic = User.find(1).instruments.create(model: "Classic", instrument_type: "Drum Set", description: "Oak Fab", price: "1949.00", category_id: Category.find(2).id, brand_id: Brand.find(9).id)
      element = User.find(2).instruments.create(model: "Element Evolution", instrument_type: "Drum Set", description: "5-Piece", price: "799.00", category_id: Category.find(2).id, brand_id: Brand.find(9).id)
      breakbeats = User.find(3).instruments.create(model: "Breakbeats by Questlove", instrument_type: "Drum Set", description: "4-Piece", price: "429.00", category_id: Category.find(2).id, brand_id: Brand.find(9).id)
    # bdc
      legend = User.find(1).instruments.create(model: "Legend Series", instrument_type: "Drum Set", description: "7-Piece", price: "5,942.27", category_id: Category.find(2).id, brand_id: Brand.find(10).id)
      birch = User.find(2).instruments.create(model: "Legend Club Birch", instrument_type: "Drum Set", description: "3-Piece Birch", price: "2,569", category_id: Category.find(2).id, brand_id: Brand.find(10).id)
      etimoe = User.find(3).instruments.create(model: "Wild Etimoe", instrument_type: "Drum Set", description: "4-Piece", price: "3,599.99", category_id: Category.find(2).id, brand_id: Brand.find(10).id)
  # keyboard
    # yamaha
    # casio
    # roland
    # kawai
    # korg
# create reviews
  # string
    # martin
      # (instrument)
        # title
        # content
        # rating
    # taylor
    # gibson
    # fender
    # ibanez
  # percussion
    # sonor
    # gretsch
    # pearl
    # ludwig
    # bdc
  # keyboard
    # yamaha
    # casio
    # roland
    # kawai
    # korg