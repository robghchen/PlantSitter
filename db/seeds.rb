# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: 'Skyguy208', name: 'Skyler', zip: '10032', phone: '7133147646', email: 'skylerwphillipstx@gmail.com', bio: 'plant dad who lost his real children in a fire five years ago and replaced them with a new family of philodendrons')
# User.create(username: 'Robguy208', name: 'Rob', zip: '11224', phone: '9176405594', email: 'robertchen234@gmail.com', bio: 'plant dad who has no real children and treat plants as family')

# Owner.create(name: "skyler", zipcode: "10032", phone: "713-314-7646", email: "skylerwphillipstx@gmail.com")
# Owner.create(name: "rob", zipcode: "11224", phone: "917-640-5594", email: "robertchen234@gmail.com")
# Owner.create(name: "kevywevy", zipcode: "66666", phone: "666-666-0666", email: "satan@satan.com")
#
#
# Sitter.create(name: "eric", zipcode: "00000", phone: "000-000-0000", email: "eric@eric.com")
# Sitter.create(name: "tony", zipcode: "11111", phone: "111-111-1111", email: "tony@tony.com")
# Sitter.create(name: "ayana", zipcode: "22222", phone: "222-222-2222", email: "ayana@ayana.com")

# Plant.create(species: 'Philodendron', info: 'Very flexible when it comes to water and light, Philodrendrons can survive almost anywhere in an apartment. Lots of natural variations.', img: 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/05/pl2000030531.jpg?width=940&height=940')
Plant.create(species: "graham", img: "/assets/graham.png")
Plant.create(species: "tony", img: "/assets/tony.png", info: "bright direct light plant, best kept on window sill, water with shotglass one a week.")
Plant.create(species: "ayana", img: "/assets/ayana.png", info: "bright indirect light plant, low maintenance, enjoys company of other plants.")
