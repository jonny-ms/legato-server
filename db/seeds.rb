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
  password_confirmation: "password",
  profile_pic: "https://ca.slack-edge.com/T2G8TE2E5-UMAFDN7FT-8c1731cbdab2-512",
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

teacher2 = Teacher.create!({
  first_name: "Jonny",
  last_name: "Milner",
  email: "j.milner@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://ca.slack-edge.com/T2G8TE2E5-ULWDQ3T16-d7f919b5529f-512",
  bio: "Oh hai. You me teach?! I teach you.",
  address: {"street": "443 Stonecourt Crescent",
            "city": "Mississauga",
            "country": "Canada"
          },
  postal_code: "M5V43",
  certifications: nil,
  will_host: false,
  will_travel: true
})

teacher3 = Teacher.create!({
  first_name: "Cameron",
  last_name: "Dunner",
  email: "c@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://ca.slack-edge.com/T2G8TE2E5-ULV0WR0RJ-d3d1fbc800a9-512",
  bio: "Oh hai. I'm a flautist.",
  address: {"street": "487 Pettit Trail",
            "city": "Milton",
            "country": "Canada"
          },
  postal_code: "M5V43",
  certifications: nil,
  will_host: true,
  will_travel: true
})

student1 = Student.create!({
  first_name: "steve",
  last_name: "student",
  email: "steve@test.com",
  password: "12341234",
  password_confirmation: "12341234",
})

course1 = Course.create!({
  teacher_id: 1,
  instrument: "Piano",
  level: "Advance",
  rate: 80
})

course3 = Course.create!({
  teacher_id: 3,
  instrument: "Piano",
  level: "Beginner",
  rate: 60
})

course3 = Course.create!({
  teacher_id: 3,
  instrument: "Piano",
  level: "Advance",
  rate: 80
})