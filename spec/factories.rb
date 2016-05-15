FactoryGirl.define do
  factory :user do
    username "Martti"
    password "Esimerkki1"
    password_confirmation "Esimerkki1"
  end

  factory :user1, class: User do
    username "Anna"
    password "Esimerkki1"
    password_confirmation "Esimerkki1"
  end

  factory :admin, class: User do
    username "Pekka"
    password "Sisilisko2"
    password_confirmation "Sisilisko2"
    admin true
  end

  factory :admin2, class: User do
    username "Jaana"
    password "Sisilisko2"
    password_confirmation "Sisilisko2"
    admin true
  end

  factory :post do
    title "Testing spec"
    intro "Testing does this spec work."
    body  "This is the body of the test spec."
  end

  factory :category do
    name  "Testing"
    description "This is about testing"
  end

  factory :tag do
    name  "Rspec"
  end

end
