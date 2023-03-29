puts "🌟 Seeding powers..."
Power.create([
  { name: "Super Strength", description: "Grants the user incredible strength" },
  { name: "Teleportation", description: "Allows the user to teleport anywhere instantly" },
  { name: "Elemental Manipulation", description: "Grants the user control over the elements (e.g. fire, water, earth, air)" },
  { name: "Invisibility", description: "Allows the user to become invisible at will" },
  { name: "Flight", description: "Grants the user the ability to fly" },
  { name: "Super Speed", description: "Allows the user to move at superhuman speeds" }
])

puts "🌟 Seeding heroes..."
Hero.create([
  { name: "Clark Kent", super_name: "Superman" },
  { name: "Diana Prince", super_name: "Wonder Woman" },
  { name: "Peter Parker", super_name: "Spider-Man" },
  { name: "Bruce Wayne", super_name: "Batman" },
  { name: "Barry Allen", super_name: "The Flash" },
  { name: "Tony Stark", super_name: "Iron Man" }
])

puts "🌟 Adding powers to heroes..."

strengths = ["Strong", "Weak", "Average"]
Hero.all.each do |hero|
  rand(2..4).times do
    # get a random power
    power = Power.find(Power.pluck(:id).sample)

    HeroPower.create!(hero_id: hero.id, power_id: power.id, strength: strengths.sample)
  end
end

puts "✅ Done seeding!"
