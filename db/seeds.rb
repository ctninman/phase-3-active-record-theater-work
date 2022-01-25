
puts "Removing old data..."
Audition.delete_all
Role.delete_all

puts "Creating auditions..."
a1 = Audition.create(actor: "Hulkster", location: "WCW", phone: 1998000, hired: false, role_id: 2)
a2 = Audition.create(actor: "Hacksaw", location: "Valhalla", phone: 2004000, hired: false, role_id: 2)
a3 = Audition.create(actor: "Doink", location: "WWF", phone: 2002000, hired: false, role_id: 3)
a4 = Audition.create(actor: "Bam Bam", location: "Full House", phone: 1995000, hired: false, role_id: 1)

puts "Creating roles..."
r1 = Role.create(character_name: "Rick")
r2 = Role.create(character_name: "Morty")
r3 = Role.create(character_name: "Mr. Meseeks")
r4 = Role.create(character_name: "Gazorpazop")

puts "Seeding done!"