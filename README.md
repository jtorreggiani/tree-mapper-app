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
