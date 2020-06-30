# create users
  jack = User.create(name: "Jackson", email: "jackson@me.com", password_digest: "1111")
  ruby = User.create(name: "Ruby", email: "ruby@kitten.com", password_digest: "2222")
  blue = User.create(name: "Blue", email: "blue@fatcat.com", password_digest: "3333")
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
      ce324 = User.find(1).instruments.create(model: "324ce", instrument_type: "Guitar", description: "6-string Electric/Acoustic", price: "2,199.00", category_id: Category.find(1).id, brand_id: Brand.find(2).id)
      ce814 = User.find(2).instruments.create(model: "814ce", instrument_type: "Guitar", description: "6-string Electric/Acoustic V-class", price: "3,999.00", category_id: Category.find(1).id, brand_id: Brand.find(2).id)
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
      birch = User.find(2).instruments.create(model: "Legend Club Birch", instrument_type: "Drum Set", description: "Birch 3-Piece", price: "2,569", category_id: Category.find(2).id, brand_id: Brand.find(10).id)
      etimoe = User.find(3).instruments.create(model: "Wild Etimoe", instrument_type: "Drum Set", description: "4-Piece", price: "3,599.99", category_id: Category.find(2).id, brand_id: Brand.find(10).id)
  # keyboard
    # yamaha
      f51 = User.find(1).instruments.create(model: "PSR-F51", instrument_type: "Keyboard", description: "61 Key Portable", price: "109.99", category_id: Category.find(3).id, brand_id: Brand.find(11).id)
      arius = User.find(2).instruments.create(model: "Arius YDP-144", instrument_type: "Piano", description: "Digital Console Piano", price: "1099.99", category_id: Category.find(3).id, brand_id: Brand.find(11).id)
      ypg535 = User.find(3).instruments.create(model: "YPG-535", instrument_type: "Piano", description: "88 Key Portable Grand Piano", price: "109.99", category_id: Category.find(3).id, brand_id: Brand.find(11).id)
    # casio
      privia = User.find(1).instruments.create(model: "Privia PX-S3000", instrument_type: "Piano", description: "88 Key Stage Piano", price: "849.00", category_id: Category.find(3).id, brand_id: Brand.find(12).id)
      casiotone = User.find(2).instruments.create(model: "Casiotone CT-S200", instrument_type: "Keyboard", description: "61 Key Portable Digital", price: "119.00", category_id: Category.find(3).id, brand_id: Brand.find(12).id)
      ap710bk = User.find(3).instruments.create(model: "AP-710BK Celviano", instrument_type: "Piano", description: "88 Key Digital Piano", price: "2499.00", category_id: Category.find(3).id, brand_id: Brand.find(12).id)
    # roland
      gopiano = User.find(1).instruments.create(model: "GO:PIANO", instrument_type: "Piano", description: "61 Key Digital Piano", price: "499.00", category_id: Category.find(3).id, brand_id: Brand.find(13).id)
      rd88 = User.find(2).instruments.create(model: "RD-88", instrument_type: "Piano", description: "88 Key Stage Piano", price: "1,199.00", category_id: Category.find(3).id, brand_id: Brand.find(13).id)
      gp609 = User.find(3).instruments.create(model: "GP-609", instrument_type: "Piano", description: "88 Key Digital Grand Piano", price: "9,999.00", category_id: Category.find(3).id, brand_id: Brand.find(13).id)
    # kawai
      ca58 = User.find(1).instruments.create(model: "CA58", instrument_type: "Piano", description: "88 Key Digital Home Piano", price: "3,099.00", category_id: Category.find(3).id, brand_id: Brand.find(14).id)
      es8 = User.find(2).instruments.create(model: "ES8", instrument_type: "Piano", description: "88 Key Digital Piano", price: "3,099.00", category_id: Category.find(3).id, brand_id: Brand.find(14).id)
      mp11se = User.find(3).instruments.create(model: "MP11SE", instrument_type: "Piano", description: "88 Key Stage Piano/Master Contoller", price: "2,799.00", category_id: Category.find(3).id, brand_id: Brand.find(14).id)
    # korg
      minilogue = User.find(1).instruments.create(model: "Minilogue", instrument_type: "Synthesizer", description: "4-Voice Analog Synthesizer", price: "499.00", category_id: Category.find(3).id, brand_id: Brand.find(15).id)
      kronos = User.find(2).instruments.create(model: "Kronos", instrument_type: "Synthesizer", description: "88 Note Keyboard Synthesizer", price: "3,899.00", category_id: Category.find(3).id, brand_id: Brand.find(15).id)
      kross = User.find(3).instruments.create(model: "Kross 2-88-M", instrument_type: "Synthesizer", description: "88 Key Synthesizer", price: "1,299.00", category_id: Category.find(3).id, brand_id: Brand.find(15).id)
# create reviews
  # string
    # martin
      # d28
      # d45
      # d15
    # taylor
      # ce1
      # ce2
      # gsmini
    # gibson
      # lespaul
      # thunderbird
      # flyingv
    # fender
      # tele
      # strat
      # jazzmaster
    # ibanez
      # s1070pbz
      # rg652ahm
      # pn12e
  # percussion
    # sonor
      # aq2
      # sq1
      # vintage
    # gretsch
      # catalina
      # brooklyn
      # renown
    # pearl
      # cabana
      # compact
      # decade
    # ludwig
      # classic
      # element
      # breakbeats
    # bdc
      # legend
      # birch
      # etimoe
  # keyboard
    # yamaha
      # f51
      # arius
      # ypg535
    # casio
      # privia
      # casiotone
      # ap710bk
    # roland
      # gopiano
      # rd88
      # gp609
    # kawai
      # ca58
      # es8
      # mp11se
    # korg
      # minilogue
      # kronos
      # kross