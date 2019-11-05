# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student1 = Student.create!({
  first_name: "Steve",
  last_name: "Francis",
  email: "steve@test.com",
  password: "12341234",
  password_confirmation: "12341234",
})

student2 = Student.create!({
  first_name: "Simon",
  last_name: "Smith",
  email: "simon@test.com",
  password: "12341234",
  password_confirmation: "12341234",
})

student3 = Student.create!({
  first_name: "Sylvester",
  last_name: "Dunlop",
  email: "sylvester@test.com",
  password: "12341234",
  password_confirmation: "12341234",
})

student4 = Student.create!({
  first_name: "Stanley",
  last_name: "Wilkinson",
  email: "stanley@test.com",
  password: "12341234",
  password_confirmation: "12341234",
})

teacher1 = Teacher.create!({
  first_name: "Trude",
  last_name: "Grunert",
  email: "trude.grunert@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/24.jpg",
  bio: "Duis adipisicing duis laborum sit esse eiusmod cillum nostrud eiusmod id in sint et proident. Nulla eiusmod Lorem velit ea sint irure exercitation qui fugiat. Elit eiusmod et magna tempor minim ex ullamco voluptate veniam elit occaecat sint nisi. Sit ullamco aliqua anim in ex nostrud est fugiat ipsum. Quis laboris nisi exercitation pariatur mollit amet.",
  tagline: "sint ad anim duis elit",
  address: {
    "street": "398 Schulweg",
    "city": "Rheinberg",
    "country": "Germany"
  },
  postal_code: "38551",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course0 = Course.create!({
  teacher_id: 1,
  instrument: "Oboe",
  level: "Advanced",
  rate: 142
}) 
 
course1 = Course.create!({
  teacher_id: 1,
  instrument: "Bassoon",
  level: "Advanced",
  rate: 96
}) 
 
course2 = Course.create!({
  teacher_id: 1,
  instrument: "Viola",
  level: "Intermediate",
  rate: 94
}) 

teacher2 = Teacher.create!({
  first_name: "Matias",
  last_name: "Juntunen",
  email: "matias.juntunen@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/86.jpg",
  bio: "Nulla enim non ad exercitation. Ad ipsum incididunt ipsum nulla irure ullamco id nulla consectetur enim. Do id non amet dolor id proident ex. Ut cupidatat nostrud eu aliquip tempor labore quis ut velit. Officia reprehenderit duis minim aliqua excepteur dolore sint pariatur deserunt commodo.",
  tagline: "elit labore exercitation esse consequat",
  address: {
    "street": "9527 Esplanadi",
    "city": "Karstula",
    "country": "Finland"
  },
  postal_code: "17678",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course3 = Course.create!({
  teacher_id: 2,
  instrument: "Oboe",
  level: "Beginner",
  rate: 134
}) 
 
course4 = Course.create!({
  teacher_id: 2,
  instrument: "Saxophone",
  level: "Beginner",
  rate: 160
}) 
 
course5 = Course.create!({
  teacher_id: 2,
  instrument: "Voice",
  level: "Beginner",
  rate: 109
}) 

teacher3 = Teacher.create!({
  first_name: "Grace",
  last_name: "Wang",
  email: "grace.wang@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/61.jpg",
  bio: "Amet mollit magna esse aute consequat dolore ex pariatur aliquip cillum quis consectetur fugiat nulla. In ipsum reprehenderit irure culpa veniam cillum. Mollit anim aute aliquip consequat enim nulla sint officia duis irure id. Id nisi ut in ex cillum exercitation. Amet amet velit quis anim Lorem adipisicing.",
  tagline: "minim mollit consectetur id qui",
  address: {
    "street": "2245 Hillsborough Road",
    "city": "New Plymouth",
    "country": "New Zealand"
  },
  postal_code: "96336",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course6 = Course.create!({
  teacher_id: 3,
  instrument: "Oboe",
  level: "Intermediate",
  rate: 129
}) 
 
course7 = Course.create!({
  teacher_id: 3,
  instrument: "Bassoon",
  level: "Intermediate",
  rate: 148
}) 
 
course8 = Course.create!({
  teacher_id: 3,
  instrument: "Guitar",
  level: "Advanced",
  rate: 176
}) 

teacher4 = Teacher.create!({
  first_name: "Harry",
  last_name: "Kim",
  email: "harry.kim@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/10.jpg",
  bio: "Id occaecat nulla nulla exercitation voluptate culpa labore voluptate reprehenderit sunt officia veniam voluptate aliqua. Amet ad ut deserunt sunt laboris. Occaecat incididunt voluptate eu voluptate veniam quis laborum adipisicing laboris deserunt exercitation cillum. Qui excepteur et id dolore aliquip proident. Nulla reprehenderit ex nostrud incididunt incididunt nostrud consequat et incididunt Lorem non eu officia qui.",
  tagline: "pariatur pariatur velit labore est",
  address: {
    "street": "3226 Plum St",
    "city": "Queanbeyan",
    "country": "Australia"
  },
  postal_code: "8316",
  certifications: nil,
  will_host: true,
  will_travel: true
}) 
 
course9 = Course.create!({
  teacher_id: 4,
  instrument: "Clarinet",
  level: "Advanced",
  rate: 101
}) 
 
course10 = Course.create!({
  teacher_id: 4,
  instrument: "Saxophone",
  level: "Beginner",
  rate: 100
}) 
 
course11 = Course.create!({
  teacher_id: 4,
  instrument: "French horn",
  level: "Advanced",
  rate: 81
}) 

teacher5 = Teacher.create!({
  first_name: "Kim",
  last_name: "Hamilton",
  email: "kim.hamilton@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/37.jpg",
  bio: "Consectetur et magna id elit exercitation eu nisi voluptate eu laboris ea ipsum laboris. Aute qui culpa fugiat esse ea sunt ullamco ea qui minim velit est minim. Laborum minim nulla cupidatat laboris amet anim consequat laborum consequat adipisicing. Dolore tempor cillum minim consectetur qui deserunt. Occaecat magna enim ut ipsum sint.",
  tagline: "culpa ut ex tempor consequat",
  address: {
    "street": "3948 New Street",
    "city": "Kingston upon Hull",
    "country": "United Kingdom"
  },
  postal_code: "NF09 3WA",
  certifications: nil,
  will_host: true,
  will_travel: true
}) 
 
course12 = Course.create!({
  teacher_id: 5,
  instrument: "Viola",
  level: "Intermediate",
  rate: 144
}) 
 
course13 = Course.create!({
  teacher_id: 5,
  instrument: "Bassoon",
  level: "Beginner",
  rate: 78
}) 
 
course14 = Course.create!({
  teacher_id: 5,
  instrument: "French horn",
  level: "Intermediate",
  rate: 185
}) 

teacher6 = Teacher.create!({
  first_name: "Deborah",
  last_name: "Morgan",
  email: "deborah.morgan@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/23.jpg",
  bio: "Enim reprehenderit occaecat esse dolore minim adipisicing. Nisi voluptate non excepteur ipsum irure anim cupidatat culpa proident est proident qui incididunt. Nisi non sunt incididunt nostrud ut pariatur consectetur velit adipisicing pariatur nisi deserunt. Officia aute excepteur sint eu dolor nisi irure eiusmod ipsum exercitation minim voluptate. In id ullamco incididunt non nisi consequat duis sunt aliqua sint sit.",
  tagline: "sit adipisicing incididunt velit commodo",
  address: {
    "street": "4376 Stanley Road",
    "city": "Londonderry",
    "country": "United Kingdom"
  },
  postal_code: "QH77 3QH",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course15 = Course.create!({
  teacher_id: 6,
  instrument: "Viola",
  level: "Beginner",
  rate: 177
}) 
 
course16 = Course.create!({
  teacher_id: 6,
  instrument: "Oboe",
  level: "Intermediate",
  rate: 81
}) 
 
course17 = Course.create!({
  teacher_id: 6,
  instrument: "Flute",
  level: "Intermediate",
  rate: 119
}) 

teacher7 = Teacher.create!({
  first_name: "Maya",
  last_name: "Mackay",
  email: "maya.mackay@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/84.jpg",
  bio: "In Lorem esse ut exercitation cupidatat sint ea pariatur. Laboris nulla occaecat do voluptate officia. Exercitation occaecat cillum ipsum ut ex eiusmod deserunt do consequat. Qui do enim esse duis ad deserunt sunt. Excepteur velit veniam non adipisicing tempor adipisicing ad tempor ipsum aliqua tempor.",
  tagline: "in consectetur irure dolore fugiat",
  address: {
    "street": "6409 Bay Ave",
    "city": "Maidstone",
    "country": "Canada"
  },
  postal_code: "D8N 7F9",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course18 = Course.create!({
  teacher_id: 7,
  instrument: "Flute",
  level: "Beginner",
  rate: 71
}) 
 
course19 = Course.create!({
  teacher_id: 7,
  instrument: "Piano",
  level: "Intermediate",
  rate: 171
}) 
 
course20 = Course.create!({
  teacher_id: 7,
  instrument: "Saxophone",
  level: "Advanced",
  rate: 152
}) 

teacher8 = Teacher.create!({
  first_name: "Anky",
  last_name: "Komen",
  email: "anky.komen@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/34.jpg",
  bio: "Qui elit ipsum aute non. Dolor nostrud labore culpa ex ut elit eu eu duis do excepteur. Sunt irure irure nisi velit officia labore nisi laborum deserunt nisi Lorem qui ut. Aliqua eu Lorem consequat elit enim nostrud sint nostrud sunt Lorem mollit amet veniam. Et eiusmod culpa duis officia.",
  tagline: "ut sit velit in nisi",
  address: {
    "street": "3670 Arsenaalpoort",
    "city": "Peest",
    "country": "Netherlands"
  },
  postal_code: "33002",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course21 = Course.create!({
  teacher_id: 8,
  instrument: "Saxophone",
  level: "Beginner",
  rate: 158
}) 
 
course22 = Course.create!({
  teacher_id: 8,
  instrument: "Clarinet",
  level: "Beginner",
  rate: 124
}) 
 
course23 = Course.create!({
  teacher_id: 8,
  instrument: "Saxophone",
  level: "Beginner",
  rate: 152
}) 

teacher9 = Teacher.create!({
  first_name: "Väinö",
  last_name: "Wiita",
  email: "vaino.wiita@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/17.jpg",
  bio: "Cupidatat sint consequat velit sit magna Lorem. Aliquip ad adipisicing eiusmod tempor qui anim proident sint aliqua pariatur. Sint fugiat elit eiusmod culpa enim duis id adipisicing ipsum labore enim. Et cillum consequat duis adipisicing sunt. Irure deserunt ullamco nostrud dolore consectetur dolore velit in aliqua et aliqua dolore sunt.",
  tagline: "aliqua consectetur eiusmod ad sit",
  address: {
    "street": "3095 Suvantokatu",
    "city": "Tuusula",
    "country": "Finland"
  },
  postal_code: "33891",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course24 = Course.create!({
  teacher_id: 9,
  instrument: "Drums",
  level: "Advanced",
  rate: 183
}) 
 
course25 = Course.create!({
  teacher_id: 9,
  instrument: "Drums",
  level: "Beginner",
  rate: 107
}) 
 
course26 = Course.create!({
  teacher_id: 9,
  instrument: "Trombone",
  level: "Intermediate",
  rate: 188
}) 

teacher10 = Teacher.create!({
  first_name: "Roy",
  last_name: "Gaillard",
  email: "roy.gaillard@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/71.jpg",
  bio: "Nostrud incididunt consequat cupidatat ullamco irure tempor. Occaecat laboris mollit est in cupidatat anim do laborum adipisicing anim. Sunt do id enim adipisicing do enim est occaecat quis anim. Fugiat enim proident mollit nulla laborum. Aliquip adipisicing nisi esse irure aute veniam mollit.",
  tagline: "esse Lorem dolore Lorem velit",
  address: {
    "street": "3652 Rue du Stade",
    "city": "Binningen",
    "country": "Switzerland"
  },
  postal_code: "6233",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course27 = Course.create!({
  teacher_id: 10,
  instrument: "Cello",
  level: "Intermediate",
  rate: 75
}) 
 
course28 = Course.create!({
  teacher_id: 10,
  instrument: "Bassoon",
  level: "Advanced",
  rate: 155
}) 
 
course29 = Course.create!({
  teacher_id: 10,
  instrument: "Voice",
  level: "Intermediate",
  rate: 153
}) 

teacher11 = Teacher.create!({
  first_name: "Sheryl",
  last_name: "Grant",
  email: "sheryl.grant@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/42.jpg",
  bio: "Laboris dolore eu cillum elit fugiat velit nostrud incididunt ullamco sunt commodo. Id in duis dolore fugiat id mollit quis exercitation duis magna in culpa. Qui quis amet consequat ad eiusmod reprehenderit laboris incididunt nulla. Mollit qui Lorem aute labore eu nostrud deserunt duis tempor duis ex nisi. Consequat minim deserunt deserunt incididunt commodo nostrud enim pariatur eu minim veniam incididunt.",
  tagline: "velit reprehenderit velit elit minim",
  address: {
    "street": "5561 Park Lane",
    "city": "Truro",
    "country": "United Kingdom"
  },
  postal_code: "M3 3WQ",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course30 = Course.create!({
  teacher_id: 11,
  instrument: "Cello",
  level: "Beginner",
  rate: 191
}) 
 
course31 = Course.create!({
  teacher_id: 11,
  instrument: "Violin",
  level: "Advanced",
  rate: 76
}) 
 
course32 = Course.create!({
  teacher_id: 11,
  instrument: "Trombone",
  level: "Beginner",
  rate: 198
}) 

teacher12 = Teacher.create!({
  first_name: "Clifford",
  last_name: "Hicks",
  email: "clifford.hicks@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/50.jpg",
  bio: "Culpa proident laborum quis quis officia sunt mollit amet labore culpa aliquip nisi non incididunt. Veniam minim id excepteur ea laborum. Velit est amet sint elit consectetur. Sit nisi consectetur fugiat qui quis et enim nostrud duis. Exercitation ex fugiat voluptate proident.",
  tagline: "voluptate velit cillum commodo cupidatat",
  address: {
    "street": "8580 Cackson St",
    "city": "Santa Maria",
    "country": "United States"
  },
  postal_code: "61920",
  certifications: nil,
  will_host: true,
  will_travel: true
}) 
 
course33 = Course.create!({
  teacher_id: 12,
  instrument: "Saxophone",
  level: "Beginner",
  rate: 82
}) 
 
course34 = Course.create!({
  teacher_id: 12,
  instrument: "Bassoon",
  level: "Beginner",
  rate: 139
}) 
 
course35 = Course.create!({
  teacher_id: 12,
  instrument: "Percussion",
  level: "Advanced",
  rate: 107
}) 

teacher13 = Teacher.create!({
  first_name: "June",
  last_name: "Watts",
  email: "june.watts@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/11.jpg",
  bio: "Deserunt est amet ex pariatur laborum ipsum. Ea proident laboris aute veniam ut ullamco sit occaecat cillum ex amet. Aliqua elit fugiat magna non occaecat in deserunt amet cillum mollit consequat pariatur. Esse excepteur pariatur cupidatat incididunt Lorem minim sint veniam irure nostrud anim anim culpa. Nisi ipsum in laboris aliqua laborum.",
  tagline: "mollit esse pariatur mollit consectetur",
  address: {
    "street": "8305 Woodland St",
    "city": "Dubbo",
    "country": "Australia"
  },
  postal_code: "9021",
  certifications: nil,
  will_host: true,
  will_travel: false
}) 
 
course36 = Course.create!({
  teacher_id: 13,
  instrument: "Double bass",
  level: "Intermediate",
  rate: 63
}) 
 
course37 = Course.create!({
  teacher_id: 13,
  instrument: "Piano",
  level: "Beginner",
  rate: 181
}) 
 
course38 = Course.create!({
  teacher_id: 13,
  instrument: "Saxophone",
  level: "Intermediate",
  rate: 148
}) 

teacher14 = Teacher.create!({
  first_name: "Friederike",
  last_name: "Joachim",
  email: "friederike.joachim@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/3.jpg",
  bio: "Mollit aute ut consequat consectetur nulla ea laborum pariatur. Exercitation non est aliqua labore. Deserunt in adipisicing tempor do voluptate fugiat dolore nulla ex. Labore commodo id aliquip est tempor occaecat velit do nulla labore est. Aliqua tempor non adipisicing fugiat tempor consequat pariatur.",
  tagline: "cupidatat veniam labore minim laboris",
  address: {
    "street": "3601 Königsberger Straße",
    "city": "Berlin",
    "country": "Germany"
  },
  postal_code: "74138",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course39 = Course.create!({
  teacher_id: 14,
  instrument: "French horn",
  level: "Advanced",
  rate: 136
}) 
 
course40 = Course.create!({
  teacher_id: 14,
  instrument: "Viola",
  level: "Advanced",
  rate: 185
}) 
 
course41 = Course.create!({
  teacher_id: 14,
  instrument: "Oboe",
  level: "Advanced",
  rate: 119
}) 

teacher15 = Teacher.create!({
  first_name: "Bertram",
  last_name: "Petersen",
  email: "bertram.petersen@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/66.jpg",
  bio: "Cupidatat laboris ut ea do aliquip sit nisi. Deserunt fugiat reprehenderit reprehenderit aliqua tempor Lorem cillum Lorem culpa. Anim occaecat do minim cillum nisi amet dolore anim eiusmod elit et. Cillum velit ipsum sit duis. Deserunt reprehenderit labore non commodo sunt quis fugiat reprehenderit velit tempor aliquip cupidatat minim.",
  tagline: "ea esse occaecat excepteur do",
  address: {
    "street": "5799 Æblevej",
    "city": "Skaerbaek",
    "country": "Denmark"
  },
  postal_code: "36792",
  certifications: nil,
  will_host: true,
  will_travel: false
}) 
 
course42 = Course.create!({
  teacher_id: 15,
  instrument: "Organ",
  level: "Beginner",
  rate: 122
}) 
 
course43 = Course.create!({
  teacher_id: 15,
  instrument: "Trumpet",
  level: "Advanced",
  rate: 117
}) 
 
course44 = Course.create!({
  teacher_id: 15,
  instrument: "Violin",
  level: "Beginner",
  rate: 74
}) 

teacher16 = Teacher.create!({
  first_name: "Amanda",
  last_name: "Ojala",
  email: "amanda.ojala@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/74.jpg",
  bio: "Enim non dolor sit ex tempor dolor irure dolore aliqua sunt. Do non occaecat ad non velit sit sunt pariatur et anim cillum anim id. Labore nisi commodo veniam do adipisicing aute. Tempor fugiat adipisicing elit eiusmod tempor adipisicing sunt veniam id velit. Eiusmod Lorem voluptate enim ea cupidatat labore.",
  tagline: "est qui aute culpa laborum",
  address: {
    "street": "7433 Hermiankatu",
    "city": "Vihanti",
    "country": "Finland"
  },
  postal_code: "58915",
  certifications: nil,
  will_host: true,
  will_travel: false
}) 
 
course45 = Course.create!({
  teacher_id: 16,
  instrument: "Oboe",
  level: "Beginner",
  rate: 99
}) 
 
course46 = Course.create!({
  teacher_id: 16,
  instrument: "Drums",
  level: "Advanced",
  rate: 68
}) 
 
course47 = Course.create!({
  teacher_id: 16,
  instrument: "Organ",
  level: "Beginner",
  rate: 109
}) 

teacher17 = Teacher.create!({
  first_name: "Emilio",
  last_name: "Vidal",
  email: "emilio.vidal@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/74.jpg",
  bio: "Nulla quis aliquip sint tempor eu sint labore. Veniam anim eu adipisicing eu laborum laboris ut sit. Anim ex aute sit sint occaecat reprehenderit labore irure et irure. Anim magna labore ea in excepteur reprehenderit. Velit dolore sit reprehenderit mollit et ad ex esse cillum amet nisi anim mollit.",
  tagline: "laboris commodo cillum exercitation magna",
  address: {
    "street": "9430 Paseo de Zorrilla",
    "city": "Cuenca",
    "country": "Spain"
  },
  postal_code: "57037",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course48 = Course.create!({
  teacher_id: 17,
  instrument: "Clarinet",
  level: "Beginner",
  rate: 142
}) 
 
course49 = Course.create!({
  teacher_id: 17,
  instrument: "Oboe",
  level: "Beginner",
  rate: 169
}) 
 
course50 = Course.create!({
  teacher_id: 17,
  instrument: "Violin",
  level: "Advanced",
  rate: 196
}) 

teacher18 = Teacher.create!({
  first_name: "Samu",
  last_name: "Maijala",
  email: "samu.maijala@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/60.jpg",
  bio: "Occaecat quis cupidatat minim labore velit ad laborum. Pariatur est consectetur qui laborum. Mollit ullamco est dolor duis sint qui aliquip cillum voluptate eiusmod. Deserunt in esse nostrud pariatur. Nisi in anim cillum irure.",
  tagline: "fugiat labore minim incididunt eiusmod",
  address: {
    "street": "6219 Pirkankatu",
    "city": "Siuntio",
    "country": "Finland"
  },
  postal_code: "64663",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course51 = Course.create!({
  teacher_id: 18,
  instrument: "Oboe",
  level: "Advanced",
  rate: 120
}) 
 
course52 = Course.create!({
  teacher_id: 18,
  instrument: "French horn",
  level: "Intermediate",
  rate: 70
}) 
 
course53 = Course.create!({
  teacher_id: 18,
  instrument: "Guitar",
  level: "Advanced",
  rate: 187
}) 

teacher19 = Teacher.create!({
  first_name: "Christoffer",
  last_name: "Nielsen",
  email: "christoffer.nielsen@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/25.jpg",
  bio: "Sint et aliqua anim nulla elit. Minim elit sint aute amet consectetur in nulla do excepteur incididunt sit. Et laboris reprehenderit ex mollit irure veniam pariatur irure deserunt. Aliquip mollit irure sit quis culpa occaecat veniam commodo voluptate deserunt sint eu officia. Esse elit proident tempor ullamco.",
  tagline: "in ipsum proident labore ipsum",
  address: {
    "street": "3087 Sprogøvej",
    "city": "V.Skerninge",
    "country": "Denmark"
  },
  postal_code: "74297",
  certifications: nil,
  will_host: true,
  will_travel: false
}) 
 
course54 = Course.create!({
  teacher_id: 19,
  instrument: "Flute",
  level: "Advanced",
  rate: 128
}) 
 
course55 = Course.create!({
  teacher_id: 19,
  instrument: "Guitar",
  level: "Beginner",
  rate: 176
}) 
 
course56 = Course.create!({
  teacher_id: 19,
  instrument: "Viola",
  level: "Beginner",
  rate: 135
}) 

teacher20 = Teacher.create!({
  first_name: "Henrikke",
  last_name: "Skaug",
  email: "henrikke.skaug@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/27.jpg",
  bio: "Nisi ea voluptate non ex sunt fugiat adipisicing. Ea eu sint Lorem labore et veniam qui aliquip. Duis culpa ullamco do adipisicing amet ipsum. Excepteur consequat ut magna mollit elit. Excepteur labore qui labore consequat sint do veniam officia occaecat consequat labore.",
  tagline: "ex duis ex irure fugiat",
  address: {
    "street": "8082 Hertug Skules gate",
    "city": "Hoelsand",
    "country": "Norway"
  },
  postal_code: "9545",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course57 = Course.create!({
  teacher_id: 20,
  instrument: "Clarinet",
  level: "Beginner",
  rate: 186
}) 
 
course58 = Course.create!({
  teacher_id: 20,
  instrument: "Violin",
  level: "Advanced",
  rate: 157
}) 
 
course59 = Course.create!({
  teacher_id: 20,
  instrument: "Bassoon",
  level: "Advanced",
  rate: 184
}) 

teacher21 = Teacher.create!({
  first_name: "Gül",
  last_name: "Duygulu",
  email: "gul.duygulu@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/women/10.jpg",
  bio: "Ex enim eiusmod et in est ullamco fugiat adipisicing ea laborum eiusmod. Qui ad incididunt anim laboris incididunt eiusmod in id est irure elit. Sit cillum qui eu qui pariatur voluptate eiusmod qui anim. Deserunt culpa nulla eiusmod ad. Enim Lorem commodo nisi deserunt veniam incididunt ut voluptate veniam veniam.",
  tagline: "ad labore consequat adipisicing ad",
  address: {
    "street": "8785 Talak Göktepe Cd",
    "city": "Denizli",
    "country": "Turkey"
  },
  postal_code: "40768",
  certifications: nil,
  will_host: true,
  will_travel: false
}) 
 
course60 = Course.create!({
  teacher_id: 21,
  instrument: "Voice",
  level: "Intermediate",
  rate: 197
}) 
 
course61 = Course.create!({
  teacher_id: 21,
  instrument: "Organ",
  level: "Advanced",
  rate: 198
}) 
 
course62 = Course.create!({
  teacher_id: 21,
  instrument: "Violin",
  level: "Beginner",
  rate: 155
}) 

teacher22 = Teacher.create!({
  first_name: "Jackson",
  last_name: "Wilson",
  email: "jackson.wilson@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/23.jpg",
  bio: "Excepteur esse esse ullamco occaecat anim dolore cillum et anim id. Est eu voluptate anim eiusmod aliqua. Lorem excepteur deserunt nisi exercitation nisi aliqua ea consectetur. Commodo velit minim consequat in commodo occaecat mollit reprehenderit est. Qui eiusmod esse cupidatat proident.",
  tagline: "cupidatat consectetur anim duis pariatur",
  address: {
    "street": "935 North Road",
    "city": "Christchurch",
    "country": "New Zealand"
  },
  postal_code: "60014",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course63 = Course.create!({
  teacher_id: 22,
  instrument: "Trombone",
  level: "Advanced",
  rate: 105
}) 
 
course64 = Course.create!({
  teacher_id: 22,
  instrument: "Flute",
  level: "Advanced",
  rate: 129
}) 
 
course65 = Course.create!({
  teacher_id: 22,
  instrument: "Voice",
  level: "Beginner",
  rate: 158
}) 

teacher23 = Teacher.create!({
  first_name: "Anthony",
  last_name: "Mcguinness",
  email: "anthony.mcguinness@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/77.jpg",
  bio: "Quis consequat proident magna et eu quis do ex elit dolore sint nisi esse. Fugiat eu sit eiusmod elit consequat amet dolore cupidatat labore velit in cillum. Consequat elit veniam nisi Lorem aliqua deserunt occaecat tempor sunt ut duis esse mollit. Exercitation nisi ipsum aute non consectetur consectetur consequat incididunt ullamco excepteur do pariatur aliqua. Cillum reprehenderit quis proident ipsum ullamco tempor sunt consectetur sint proident.",
  tagline: "veniam deserunt tempor laborum in",
  address: {
    "street": "1509 O'Connell Avenue",
    "city": "Wicklow",
    "country": "Ireland"
  },
  postal_code: "81431",
  certifications: nil,
  will_host: true,
  will_travel: false
}) 
 
course66 = Course.create!({
  teacher_id: 23,
  instrument: "Cello",
  level: "Beginner",
  rate: 83
}) 
 
course67 = Course.create!({
  teacher_id: 23,
  instrument: "Organ",
  level: "Advanced",
  rate: 130
}) 
 
course68 = Course.create!({
  teacher_id: 23,
  instrument: "Double bass",
  level: "Beginner",
  rate: 118
}) 

teacher24 = Teacher.create!({
  first_name: "Tommy",
  last_name: "Peterson",
  email: "tommy.peterson@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/4.jpg",
  bio: "Deserunt ea voluptate nostrud id esse minim id duis commodo velit eu. Proident elit eu id Lorem. Ex in elit irure voluptate fugiat pariatur aliquip voluptate pariatur anim ut amet sit Lorem. Do id do esse est. Enim sint tempor exercitation exercitation elit ut minim tempor irure exercitation tempor.",
  tagline: "ut quis ea veniam occaecat",
  address: {
    "street": "2358 Crockett St",
    "city": "Denton",
    "country": "United States"
  },
  postal_code: "54330",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course69 = Course.create!({
  teacher_id: 24,
  instrument: "Cello",
  level: "Advanced",
  rate: 98
}) 
 
course70 = Course.create!({
  teacher_id: 24,
  instrument: "Saxophone",
  level: "Intermediate",
  rate: 117
}) 
 
course71 = Course.create!({
  teacher_id: 24,
  instrument: "Flute",
  level: "Intermediate",
  rate: 95
}) 

teacher25 = Teacher.create!({
  first_name: "Antonio",
  last_name: "Hoffman",
  email: "antonio.hoffman@example.com",
  password: "password",
  password_confirmation: "password",
  profile_pic: "https://randomuser.me/api/portraits/men/91.jpg",
  bio: "Laborum anim ad nulla ex anim consequat ullamco enim ea laboris. Est exercitation ea enim ullamco eiusmod eiusmod dolor velit. Sit ullamco aliqua officia irure dolore exercitation fugiat culpa esse. Quis aliqua ipsum laboris ipsum consectetur duis cupidatat commodo Lorem dolore dolor. Ad quis tempor ullamco do dolore aliquip.",
  tagline: "amet cupidatat sint ut officia",
  address: {
    "street": "4578 Timber Wolf Trail",
    "city": "Dubbo",
    "country": "Australia"
  },
  postal_code: "8520",
  certifications: nil,
  will_host: false,
  will_travel: true
}) 
 
course72 = Course.create!({
  teacher_id: 25,
  instrument: "Oboe",
  level: "Advanced",
  rate: 136
}) 
 
course73 = Course.create!({
  teacher_id: 25,
  instrument: "Oboe",
  level: "Intermediate",
  rate: 136
}) 
 
course74 = Course.create!({
  teacher_id: 25,
  instrument: "Piano",
  level: "Intermediate",
  rate: 149
}) 
