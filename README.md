### README
This is a projet boilerplate to generate API's

### Setup with docker
To build the project run the command:
```console
$ RAILS_ENV=test docker-compose up --build
```

### To run unit tests
```console
$ docker-compose run -e "RAILS_ENV=test" web bundle exec rspec
```

### To run unit test to specific file
```console
$ docker-compose run -e "RAILS_ENV=test" web bundle exec rspec spec/controllers/versions_controller_spec.rb
```

### To run rails console
```console
$ docker-compose run -e "RAILS_ENV=test" web rails c
```

### To run rubocop
```console
$ docker-compose run -e "RAILS_ENV=test" web rubocop
```

### To run rubocop with auto correct files
```console
$ docker-compose run -e "RAILS_ENV=test" web rubocop -A
```


### Update documentation on Swagger
#### Generate your new documentation:
```console
$ docker-compose run -e "RAILS_ENV=test" web rails g rspec:swagger versions
```

#### Run the rake to update yaml
```console
$ docker-compose run -e "RAILS_ENV=test" web rake rswag:specs:swaggerize
```
Note: check the generate files and if necessary update something manually

#### References
https://betterprogramming.pub/documenting-ruby-on-rails-apis-using-rswag-gem-48c92e11ea30
https://medium.com/ruby-daily/a-devise-jwt-tutorial-for-authenticating-users-in-ruby-on-rails-ca214898318e