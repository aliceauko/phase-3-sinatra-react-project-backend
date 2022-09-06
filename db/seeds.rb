puts "🌱 Seeding spices..."

# Seed your database 

Boss.destroy_all
Employee.destroy_all


alice = Boss.create(name: "Alice")
mary = Boss.create(name: "Mary")
eliud = Boss.create(name: "Eliud")
tina = Boss.create(name: "Tina")


Employee.create(name: "Jane", category: "Director", is_present: false, boss_id:mary.id)
Employee.create(name: "Jude", category: "Accountant", is_present: false, boss_id:alice.id)
Employee.create(name: "Janet", category: "Data", is_present: false, boss_id:eliud.id)
Employee.create(name: "Jenny", category: "Accountant", is_present: false, boss_id:alice.id)

puts "✅ Done seeding!"
