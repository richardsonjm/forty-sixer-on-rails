FactoryGirl.define do

  factory :paul, class: User do
    name                  "Paul Bunyan"
    email                 "paul@bunyan.com"
    password              "foobar"
    password_confirmation "foobar"
  end

  factory :brody, class: User do
    name                  "Brody Cliffhanger"
    email                 "broady@cliffhanger.com"
    password              "barfoo"
    password_confirmation "barfoo"
  end

end

