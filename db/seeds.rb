# create users
  jack = User.create(email: "jackson@me.com", password_digest: "1111")
  ruby = User.create(email: "ruby@kitten.com", password_digest: "2222")
  blue = User.create(email: "blue@fatcat.com", password_digest: "3333")
# create categories
  string = Category.create(name: "String")
  percussion = Category.create(name: "Percussion")
  woodwind = Category.create(name: "Woodwind")
  brass = Category.create(name: "Brass")
  key = Category.create(name: "Keyboard")
# create brands
  # string
    martin = Brand.create(name: "C.F. Martin & Co.", category: :string, available: true)
    taylor = Brand.create(name: "Taylor", category: "String", available: true)
    gibson = Brand.create(name: "Gibson", category: "String", available: true)
    fender = Brand.create(name: "Fender", category: "String", available: true)
    ibanez = Brand.create(name: "Ibanez", category: "String", available: true)
  # percussion
    sonor = Brand.create(name: "Sonor", category: "Percussion", available: true)
    gretsch = Brand.create(name: "Gretsch", category: "Percussion", available: true)
    pearl = Brand.create(name: "Pearl", category: "Percussion", available: true)
    ludwig = Brand.create(name: "Ludwig", category: "Percussion", available: true)
    bdc = Brand.create(name: "British Drum Company", category: "Percussion", available: true)
  # woodwind
    fox = Brand.create(name: "Fox", category: "Woodwind", available: true)
    allora = Brand.create(name: "Allora", category: "Woodwind", available: true)
    conn = Brand.create(name: "Conn-Selmer", category: "Woodwind", available: true)
    etude = Brand.create(name: "Etude", category: "Woodwind", available: true)
    buffet = Brand.create(name: "Buffet-Crampon", category: "Woodwind", available: true)
  # brass
    warburton = Brand.create(name: "Warburton", category: "Brass", available: true)
    kohler = Brand.create(name: "Köhler & Son", category: "Brass", available: true)
    elden = Brand.create(name: "Elden Benge", category: "Brass", available: true)
    bmic = Brand.create(name: "Boston Musical Instrument Company", category: "Brass", available: true)
    nirshcl = Brand.create(name: "Nirschl", category: "Brass", available: true)
  # keyboard
    yamaha = Brand.create(name: "Yamaha", category: "Keyboard", available: true)
    casio = Brand.create(name: "Casio", category: "Keyboard", available: true)
    roland = Brand.create(name: "Roland", category: "Keyboard", available: true)
    kawai = Brand.create(name: "Kawai", category: "Keyboard", available: true)
    korg = Brand.create(name: "korg", category: "Keyboard", available: true)
# create instruments
  # string
    # martin
      d28 = Instrument.
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
  # woodwind
    # fox
    # allora
    # conn-selmer
    # etude
    # buffet-crampon
  # brass
    # warburton
    # köhler & son
    # elden benge
    # boston musical instrument company
    # nirschl
  # keyboard
    #
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
  # woodwind
    # fox
    # allora
    # conn-selmer
    # etude
    # buffet-crampon
  # brass
    # warburton
    # köhler & son
    # elden benge
    # boston musical instrument company
    # nirschl
  # keyboard
    # yamaha
    # casio
    # roland
    # kawai
    # korg