# Garden.create!(
#   name: "My Little Garden",
#   banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
# )

# Garden.create!(
#   name: "My Other Garden",
#   banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
# )

tags = ["Fruit tree", "Cactus", "Greasy plant", "Flower", "Ferns", "Conifers"]

tags.each do |tag|
  Tag.create(name: tag)
end
