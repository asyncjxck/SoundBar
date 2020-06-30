# create users
  jack = User.create(email: "jackson@me.com", password_digest: "1111")
  ruby = User.create(email: "ruby@kitten.com", password_digest: "2222")
  blue = User.create(email: "blue@fatcat.com", password_digest: "3333")
# create categories
  string = Category.create(name: "string")
  percussion = Category.create(name: "percussion")
  woodwind = Category.create(name: "woodwind")
  brass = Category.create(name: "brass")
  keyboard = Category.create(name: "keyboard")
# create brands
  # string
    martin = string.brands.create(name: "C.F. Martin & Co.", available: true)
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
  # woodwind
    fox = woodwind.brands.create(name: "Fox", available: true)
    allora = woodwind.brands.create(name: "Allora", available: true)
    conn = woodwind.brands.create(name: "Conn-Selmer", available: true)
    etude = woodwind.brands.create(name: "Etude", available: true)
    buffet = brass.brands.create(name: "Buffet-Crampon", available: true)
  # brass
    warburton = brass.brands.create(name: "Warburton", available: true)
    kohler = brass.brands.create(name: "Köhler & Son", available: true)
    elden = brass.brands.create(name: "Elden Benge", available: true)
    bmic = brass.brands.create(name: "Boston Musical Instrument Company", available: true)
    nirshcl = brass.brands.create(name: "Nirschl", available: true)
  # keyboard
    yamaha = keyboard.brands.create(name: "Yamaha", available: true)
    casio = keyboard.brands.create(name: "Casio", available: true)
    roland = keyboard.brands.create(name: "Roland", available: true)
    kawai = keyboard.brands.create(name: "Kawai", available: true)
    korg = keyboard.brands.create(name: "korg", available: true)
# create instruments
  # string
    # martin
      
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