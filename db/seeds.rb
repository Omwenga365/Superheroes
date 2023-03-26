# db/seeds.rb

# create some powers
fire = Power.create(name: "Fire", description: "Control flames and create fire")
water = Power.create(name: "Water", description: "Manipulate water and ice")
telekinesis = Power.create(name: "Telekinesis", description: "Move objects with your mind")

# create some heroes with powers
superman = Hero.create(name: "Superman")
superman_powers = [fire, telekinesis]
superman_powers.each do |power|
  HeroPower.create(hero: superman, power: power, level: rand(1..10))
end

batman = Hero.create(name: "Batman")
batman_powers = [water, telekinesis]
batman_powers.each do |power|
  HeroPower.create(hero: batman, power: power, level: rand(1..10))
end
