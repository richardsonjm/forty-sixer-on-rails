FactoryGirl.define do

  factory :widow_maker, class: Trek do 
    name      "Widow Maker"
    url       "http://en.wikipedia.org/wiki/Mount_Everest"
    diff      "Difficult"
    distance  "300"
    duration  "Multiple-day"
    desc      "Expensive and dangerous"
  end

  factory :funday, class: Trek do
    name      "Fun Day"
    url       "http://en.wikipedia.org/wiki/Poke-O-Moonshine_Mountain"
    diff      "Easy"
    distance  "1.2"
    duration  "Half-day"
    desc      "Steep but fun"
  end
end
