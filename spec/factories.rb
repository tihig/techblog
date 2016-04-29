FactoryGirl.define do
  factory :user do
    username "Seppo"
    password "Esimerkki1"
    password_confirmation "Esimerkki1"
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
