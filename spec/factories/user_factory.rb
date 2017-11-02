FactoryGirl.define do
  
  factory :user do
    
    email { "#{SecureRandom.hex(8)}@mailinator.com" } # mail can be actually checked at mailinator.com.
    name { Faker::Name.first_name }
    
    trait :admin do 
      admin true
    end 
      
  end
  
end