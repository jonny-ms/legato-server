# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher1 = Teacher.create!({
  first_name: "Aaron",
  last_name: "Tagadtad",
  email: "a.tag@gmail.com",
  password: "password",
  profile_pic: "https://www.arisecity.ca/uploads/6/9/2/8/6928203/published/aaron.jpeg?1554954339",
  bio: "Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before. Many say exploration is part of our destiny, but it’s actually our duty to future generations and their quest to ensure the survival of the human species.",
  address: {"street": "662 King St",
            "city": "Toronto",
            "country": "Canada"
          },
  postal_code: "M5V 1M7",
  certifications: nil,
  will_host: true,
  will_travel: false
})