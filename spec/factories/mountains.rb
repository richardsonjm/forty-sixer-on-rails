FactoryGirl.define do
  
  factory :everest, class: Mountain do
    name     "Everest"
    rank     1
    height   29029
  end

  factory :k2, class: Mountain do
    name     "k2"
    rank     2
    height   28251
  end

  factory :poko, class: Mountain do
    name     "Poko-Moonshine"
    rank     48
    height   2810
  end
end
