# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tag do
    description "hello"
  end

  factory :yolo, class: Tag do
  	description  "#YOLO"
  end
end
