# Skeleton

Skeleton rails project to make scaffolding web projects.

## Installation

Clone the repository

```sh
git clone git@github.com:jtorreggiani/skeleton.git
cd skeleton
```

## System Dependencies

- node
- yarn
- sqlite3
- chromdriver
- heroku

## Setup

Run rails setup script

```sh
./bin/setup
```

## Ruby Gems

- rspec-rails
- simplecov
- yard
- yardstick
- rubocop
- brakeman
- rails_best_practices
- rubycritic
- bullet
- webpacker
- capybara
- pry-rails
- cucumber-rails
- selenium-webdriver

## Development Environment

Run the development server

```sh
bundle exec rails server
open http://localhost:3000
```

## Debugging

Add `pry` binding to debug code

```ruby
def index
  binding.pry
  @variable = SomeModel.find(params[:id])
end
```

## Automated Testing

Run the tests

```sh
bundle exec rspec
```

Include spec documentation

```sh
bundle exec rspec --format=documentation
```

View test coverage

```sh
open coverage/index.html
```

## Acceptance Testing

Run acceptance tests

```sh
bundle exec cucumber
```

## Static Code Analysis

Run rubocop

```sh
bundle exec rubocop
```

Run rubycritic

```sh
bundle exec rubycritic --no-browser
```

## Documentation

Build documentation

```sh
bundle exec yard
```

Run documentation server

```sh
bundle exec yard server
open http://localhost:8808
```

Measure documentation coverage

```sh
bundle exec yardstick .
```

## Security

Run brakeman to check for security issues

```sh
bundle exec brakeman
```

## Best Practices

Run best practices tool

```sh
bundle exec rails_best_practices .
```

## Deployment

The default deployment strategy for the application is Heroku. Future tutorials will demonstrate deployment to different IaaS providers like AWS and Google Cloud. To get started make sure you have the Heroku CLI installed. Instructions for getting the CLI can be found [here](https://devcenter.heroku.com/articles/heroku-cli).

### Initial setup

Login to Heroku

```sh
heroku login
heroku: Enter your login credentials
Email: example@example.com
Password: *****************
Logged in as example@example.com
```

### Staging Environment

Create staging environment

```sh
heroku apps:create application-name-staging --remote staging
```

Set staging environment variables

```sh
heroku config:set SKELETON_DATABASE_NAME=application_name_staging --remote staging
heroku config:set SKELETON_DATABASE_USERNAME=application_name_user --remote staging
heroku config:set SKELETON_DATABASE_PASSWORD=SECURE_PASSWORD --remote staging
```

Push code to staging environment

```sh
git push staging master
```

Migration staging database

```sh
heroku run rake db:migrate --remote staging
```

Ensure you have a dyno running

```sh
heroku ps:scale web=1 --remote production
```

Open app

```sh
heroku open --remote staging
```

### Production Environment

Create production environment

```sh
heroku apps:create application-name-staging --remote production
```

Set staging environment variables

```sh
heroku config:set SKELETON_DATABASE_NAME=application_name_production --remote production
heroku config:set SKELETON_DATABASE_USERNAME=application_name_user --remote production
heroku config:set SKELETON_DATABASE_PASSWORD=SECURE_PASSWORD --remote production
```

Push code to production environment

```sh
git push production master
```

Migrate production database

```sh
heroku run rake db:migrate --remote production
```

Ensure you have a dyno running

```sh
heroku ps:scale web=1 --remote production
```

Open app

```sh
heroku open --remote production
```
