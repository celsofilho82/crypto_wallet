# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mining_types = [{ description: "Proof of Work", acronym: "PoW" }, { description: "Proof of Stake", acronym: "PoS" }, { description: "Proof of Capacity", acronym: "PoC" }]

mining_types.each do |type|
  MiningType.find_or_create_by!(type)
end

coins = [
  { description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://toppng.com/uploads/preview/bitcoin-png-bitcoin-logo-transparent-background-11562933997uxok6gcqjp.png",
    mining_type: MiningType.find_by(acronym: "PoW")
  },
  { description: "Ethereum",
    acronym: "ETH",
    url_image: "https://www.stickpng.com/assets/images/5a7593f664538c292dec1bbe.png",
    mining_type: MiningType.all.sample
  },
  { description: "Dash",
    acronym: "DASH",
    url_image: "https://i7.pngguru.com/preview/277/923/599/dash-cryptocurrency-bitcoin-ethereum-monero-dash.jpg",
    mining_type: MiningType.all.sample
  },
  { description: "IOTA",
    acronym: "IOT",
    url_image: "https://img2.gratispng.com/20180712/tkc/kisspng-iota-cryptocurrency-logo-internet-of-things-tether-aren-5b481f06b57ae1.5360095415314531907434.jpg",
    mining_type: MiningType.all.sample
  },
  { description: "ZCash",
    acronym: "ZEC",
    url_image: "https://img2.gratispng.com/20180524/rbc/kisspng-zcash-logo-cryptocurrency-cash-coupons-5b06a838ea8466.5309779315271629369606.jpg",
    mining_type: MiningType.all.sample
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end
