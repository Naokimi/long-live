# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "emptying database"

Character.destroy_all

if Skill.first.nil?

  puts "creating skills"

  Skill.create!(name: "Composure", category: "Social", sub_category: "Royal Demeanor", description: "Staying calm under pressure or pain.")
  Skill.create!(name: "Elegance", category: "Social", sub_category: "Royal Demeanor", description: "Moving and acting gracefully.")
  Skill.create!(name: "Presence", category: "Social", sub_category: "Royal Demeanor", description: "Motivating people with the power of your personality.")
  Skill.create!(name: "Public Speaking", category: "Social", sub_category: "Conversation", description: "Speeches and persuasive dialogue.")
  Skill.create!(name: "Court Manners", category: "Social", sub_category: "Conversation", description: "Decorum of the royal court.")
  Skill.create!(name: "Flattery", category: "Social", sub_category: "Conversation", description: "Making graceful compliments and answering them appropriately.")
  Skill.create!(name: "Decoration", category: "Social", sub_category: "Expression", description: "Painting, sculpting, fashion, visual arts.")
  Skill.create!(name: "Instrument", category: "Social", sub_category: "Expression", description: "Musical instruments.")
  Skill.create!(name: "Voice", category: "Social", sub_category: "Expression", description: "Singing and voice projecting.")
  Skill.create!(name: "Novan History", category: "Intellectual", sub_category: "History", description: "Nova's origin and past.")
  Skill.create!(name: "Foreign Affairs", category: "Intellectual", sub_category: "History", description: "Past relations between Nova and foreign lands.")
  Skill.create!(name: "World History", category: "Intellectual", sub_category: "History", description: "How the countries came to be and other significant happenings of the past (backstory).")
  Skill.create!(name: "Internal Affairs", category: "Intellectual", sub_category: "Intrigue", description: "Secret information about Novan nobles.")
  Skill.create!(name: "Foreign Intelligence", category: "Intellectual", sub_category: "Intrigue", description: "Secret information about foreign countries and nobility.")
  Skill.create!(name: "Ciphering", category: "Intellectual", sub_category: "Intrigue", description: "How to safely write or read secret information.")
  Skill.create!(name: "Herbs", category: "Intellectual", sub_category: "Medicine", description: "Medicinal herbs and how to use them.")
  Skill.create!(name: "Battlefield Medicine", category: "Intellectual", sub_category: "Medicine", description: "Emergency treatments, healing with little resources and correct treatment of wounds.")
  Skill.create!(name: "Poison", category: "Intellectual", sub_category: "Medicine", description: "Poisons, their effects and how to treat them.")
  Skill.create!(name: "Accounting", category: "Intellectual", sub_category: "Economics", description: "Money, taxes, book-keeping and budget management.")
  Skill.create!(name: "Trade", category: "Intellectual", sub_category: "Economics", description: "International finance.")
  Skill.create!(name: "Production", category: "Intellectual", sub_category: "Economics", description: "Nova's resources and importation.")
  Skill.create!(name: "Strategy", category: "Intellectual", sub_category: "Military", description: "Soldiers, unit types, psychological warfare and chains of command.")
  Skill.create!(name: "Naval Strategy", category: "Intellectual", sub_category: "Military", description: "Ship types and construction, naval traveling and naval warfare.")
  Skill.create!(name: "Logistics", category: "Intellectual", sub_category: "Military", description: "Supplies and rations, how to move and distribute them, and how to disrupt the enemy's.")
  Skill.create!(name: "Dance", category: "Physical", sub_category: "Agility", description: "Ballroom dancing, dance techniques and culture of dances.")
  Skill.create!(name: "Reflexes", category: "Physical", sub_category: "Agility", description: "Quickly responding to sudden obstacles.")
  Skill.create!(name: "Flexibility", category: "Physical", sub_category: "Agility", description: "Ease of movements in muscles and joints.")
  Skill.create!(name: "Swords", category: "Physical", sub_category: "Weapons", description: "Fencing techniques.")
  Skill.create!(name: "Archery", category: "Physical", sub_category: "Weapons", description: "Archery, maintenance of bow and arrows and calculating the movement of projectiles.")
  Skill.create!(name: "Polearms", category: "Physical", sub_category: "Weapons", description: "Long weapons techniques.")
  Skill.create!(name: "Running", category: "Physical", sub_category: "Athletics", description: "Train speed and stamina while running.")
  Skill.create!(name: "Climbing", category: "Physical", sub_category: "Athletics", description: "Safely climbing heights.")
  Skill.create!(name: "Swimming", category: "Physical", sub_category: "Athletics", description: "Buoyancy, endurance and hazards while swimming.")
  Skill.create!(name: "Horses", category: "Physical", sub_category: "Animal Handling", description: "Riding and grooming of horses.")
  Skill.create!(name: "Dogs", category: "Physical", sub_category: "Animal Handling", description: "Training, breeding and caring of dogs.")
  Skill.create!(name: "Falcons", category: "Physical", sub_category: "Animal Handling", description: "Behavior of birds of prey.")
  Skill.create!(name: "Meditation", category: "Mystic", sub_category: "Faith", description: "Channeling strength through relaxation and unlocking the mind's eye.")
  Skill.create!(name: "Divination", category: "Mystic", sub_category: "Faith", description: "Presages, signs of fortune, meaningful dreams, forewarnings and omens.")
  Skill.create!(name: "Lore", category: "Mystic", sub_category: "Faith", description: "Legends and history of magic.")
  Skill.create!(name: "Sense Magic", category: "Mystic", sub_category: "Lumen", description: "Detecting magic and magic users.")
  Skill.create!(name: "Resist Magic", category: "Mystic", sub_category: "Lumen", description: "Resistances against harmful magic.")
  Skill.create!(name: "Wield Magic", category: "Mystic", sub_category: "Lumen", description: "Manipulation and deliberate use of magic.")

end

puts "creating character"

char = Character.create!

puts "creating skill tree"

st = SkillTree.new
st.character = char
st.save!

puts "filling skill tree with skills"

counter = 0
until counter == Skill.count
  counter += 1
  cs = CharSkill.new
  cs.skill_id = counter
  cs.skill_tree = st
  cs.save!
end

puts "finished"
