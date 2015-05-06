FactoryGirl.define do 
  factory :beer do
    name "Generic Beer"
    image_url "image_placeholder"
    abv 4.5
    availability "Year-Round"
    description "placeholder text"
    food_pairings "anything"
    glassware "anything"
    serving_temp 40
  end
end