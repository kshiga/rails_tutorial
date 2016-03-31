User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  prng = Random.new
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               # for a quick visual diff on returning only activated users
               # Excercise 10.5.2
               #activated: true,
               activated: prng.rand(100) > 50,
               activated_at: Time.zone.now)
end
