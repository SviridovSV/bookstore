FactoryGirl.define do
  factory :review do
    book #association :book
    content 'Review text' #использовать FFaker
    title 'title'
    rating 4
    status 'approved'
  end
end
