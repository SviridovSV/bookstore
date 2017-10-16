FactoryGirl.define do
  factory :order_item do
    book #association :book
    order #association :order
    quantity 5
  end
end
