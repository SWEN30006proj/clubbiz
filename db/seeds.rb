# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#society initial data
Society.destroy_all
number_of_test_societies = 10
number_of_test_societies.times do
  Society.create(
      society_name: Faker::Name.name,
      registration_number: Faker::Number.number(10),
      club_website: Faker::Internet.free_email,
      club_nickname: Faker::Name.name,
      password: Faker::Internet.password,
      president_name: Faker::Name.name,
      president_phone_number: Faker::PhoneNumber.phone_number,
      president_email:Faker::Internet.email,
      treasurer_name:Faker::Name.name,
      treasurer_phone_number: Faker::PhoneNumber.phone_number,
      treasurer_email:Faker::Internet.email,
      club_biz_administrator_name:Faker::Name.name,
      club_biz_administrator_phone_number:Faker::PhoneNumber.phone_number,
      club_biz_administrator_email: Faker::Internet.email
  )
end

#event initial data
Event.destroy_all
number_of_test_events = 10
number_of_test_events.times do
  Event.create(
    title: Faker::Name.name,
    start_time: Time.now,
    finish_time: Time.now,
    venue: Faker::Address.street_address,
    event_type: Faker::Name.name,
    event_url: Faker::Internet.url,
    image_urls: rand(1..4).to_s + ".jpg",
    max_num_tickets: rand(1..4),
    ticket_price: "$" + rand(1..100).to_s + "." + rand(0..99).to_s,
    ticket_start_date_time: Time.now,
    ticket_end_date_time: Time.now,
    ticket_purchase_pickup_information: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3),
    societies_shared_with: ""
  )
end

#add shared societies to events
Event.all.size.times do |j|
  all_event = Event.all
  all_societies = Society.all
  all_society_ids = all_societies.collect{|i| i.id}
  #subset o ids and convert to string
  all_society_ids_string = all_society_ids.sort_by{rand}.drop(rand(0..9)).join(' ')
  all_event[j].societies_shared_with = all_society_ids_string
  all_event[j].save
end
