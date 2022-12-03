# README

RAILS_ENV=test docker-compose up --build
docker-compose run -e "RAILS_ENV=test" web bundle exec rspec

docker-compose run -e "RAILS_ENV=test" web bundle exec rspec spec/controllers/versions_controller_spec.rb


docker-compose run -e "RAILS_ENV=test" web rails c

docker-compose run -e "RAILS_ENV=test" web rubocop

rubocop -A
- jwt
