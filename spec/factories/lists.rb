# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    job_id { Random.new.rand(0..1000000) }
    list_name { Faker::Name.name }
    list_type { Faker::Name.name }
    list_code { Faker::Name.name }
    status { Faker::Name.name }
    po { Random.new.rand(0..1000000) }
    segment { Faker::Name.name }
    segment2 { Faker::Name.name }
    date_received "2013-09-27 12:20:49"
    expected_quantity { Random.new.rand(0..1000000) }
    declared_quantity { Random.new.rand(0..1000000) }
    received_quantity { Random.new.rand(0..1000000) }
    converted_quantity { Random.new.rand(0..1000000) }
    approved false
    approved_by { Random.new.rand(0..1000000) }
    approved_at "2013-09-27 12:20:49"
    canceled false
    canceled_by { Random.new.rand(0..1000000) }
    canceled_at "2013-09-27 12:20:49"
    conversion_rejects { Faker::Name.name }
    comments { Faker::Name.name }
  end
end
