# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tour do
    title "My title"
    teaser "My teaser"
    description "My description"
    url "http://www.google.com/maps/"
    categories { [FactoryGirl.build(:category)] }
  end
end
