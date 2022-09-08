FactoryBot.define do
  factory :user do
    email { 'test1@fin.cl' }
    full_name { 'Test1' }
    github_user { 'mygithub_user' }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
