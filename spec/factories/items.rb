# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    sequence(:name) { |n| "test #{n}"}
    quantity 1
  end
end
