# User stories

# - As a user I can see one garden's plants
# - As a user I can add a plant in a garden
# - As a user I can delete a plant

#Today's Task

# 1. Generate the `Tag` model
# 2. Generate the model we'll use as join table
# 3. Add associations & validations
# 4. Crash test in rails c
# 5. We want to be able to click on a link from a plant card to display a form for adding tags. First we'll create a form to add a single tag

# Optional: see how to add multiple tags at the same time.

Garden.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers)

names.each do |name|
  Tag.create!(name: name)
end
