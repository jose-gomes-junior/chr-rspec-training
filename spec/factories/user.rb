FactoryBot.define do
  factory :user do
    first_name { 'Damon' }
    middle_name { 'G.' }
    last_name  { 'Ramsey' }

    trait :nil_middle_name do
      middle_name { }
    end

    trait :empty_middle_name do
      middle_name { '' }
    end
  end
end
