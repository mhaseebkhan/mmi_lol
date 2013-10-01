# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :job do |f|
    f.name { Faker::Name.name }
    f.number { Random.new.rand(0..1000000) }
    f.file Rack::Test::UploadedFile.new('spec/fixtures/sample.xls', 'application/vnd.ms-excel')
  end
end
