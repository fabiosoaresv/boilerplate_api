FactoryBot.define do
  factory :user do
    email { 'factory@bot.io' }
    password { 'somepass123' }
  end
end