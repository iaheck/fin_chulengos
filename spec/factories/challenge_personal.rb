FactoryBot.define do
  factory :challenge_personal do
    name { 'challenge personal' }
    description { 'este challenge es cool' }
    url { 'https://www.google.com' }
    checkpoint
  end
end
