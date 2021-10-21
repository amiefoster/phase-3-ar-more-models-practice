Plant.destroy_all
Plant.reset_pk_sequence
Person.destroy_all
Person.reset_pk_sequence
PlantParenthood.destroy_all
PlantParenthood.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence

categories_arr = ["indoor", "outdoor"]
categories_arr.each{|cat_name| Category.create(name: cat_name)}

basil = Plant.create(species: "basil the herb", bought: "20200610", color: "green", fussy: true, category_id: Category.first.id)
corn_tree = Plant.create(species: "Corn Tree", bought: "20170203", color: "green", fussy: false, category_id: Category.second.id)
prayer_plant = Plant.create(species: "Prayer plant", bought: "20190815", color: "purple", fussy: false, category_id: Category.second.id)
cactus_1 = Plant.create(species: "Cactus", bought: "20200110", color: "ugly green", fussy: false, category_id: Category.second.id)
elephant_bush = Plant.create(species: "Elephant bush", bought: "20180908", color: "green", fussy: true, category_id: Category.first.id)
photos = Plant.create(species: "Photos", bought: "20170910", color: "green", fussy: false, category_id: Category.second.id)
dragon_tree = Plant.create(species: "Dragon tree", bought: "20170910", color: "green", fussy: false, category_id: Category.second.id)
snake_plant = Plant.create(species: "Snake plant", bought: "20170910", color: "dark green", fussy: false, category_id: Category.second.id)
polka_dot_plant = Plant.create(species: "polka dot plant", bought: "20170915", color: "pink and green", fussy: false, category_id: Category.first.id)
cactus_2 = Plant.create(species: "Cactus", bought: "20200517", color: "green", fussy: false, category_id: Category.first.id)

# binding.pry

joel = Person.create(name: "Joel", responsible: false, age: 10_000)
sylwia = Person.create(name: "Sylwia", responsible: true, age: 31)

PlantParenthood.create(plant_id: prayer_plant.id, person_id: joel.id, affection:0)
PlantParenthood.create(plant_id: basil.id, person_id: joel.id, affection:1)
PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection:10)
PlantParenthood.create(plant_id: corn_tree.id, person_id: sylwia.id, affection:10)

PlantCategory.create(plant_id: 1, category_id: 1)
PlantCategory.create(plant_id: 2, category_id: 1)
PlantCategory.create(plant_id: 2, category_id: 2)
PlantCategory.create(plant_id: 10, category_id: 2)
PlantCategory.create(plant_id: 3, category_id: 2)
PlantCategory.create(plant_id: 2, category_id: 1)

Watering.create(plant_id: 2, person_id: 1)
Watering.create(plant_id: 3, person_id: 1)
Watering.create(plant_id: 4, person_id: 1)
Watering.create(plant_id: 5, person_id: 2)
Watering.create(plant_id: 6, person_id: 2)
Watering.create(plant_id: 7, person_id: 2)

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "