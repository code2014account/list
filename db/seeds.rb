
50.times do


User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'topsecret',
  password_confirmation: 'topsecret'
  )
end

20.times do


Item.create!(
  name: Faker::Company.bs
)
end



puts "Seeds finished"
puts "#{User.count} Users created"
puts "#{Item.count} Items created"
