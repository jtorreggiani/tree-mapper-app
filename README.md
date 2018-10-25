# Skeleton

Skeleton rails project to make scaffolding web projects.

## Installation

Clone the repository
```
git clone git@github.com:jtorreggiani/skeleton.git
cd skeleton
```

## System Dependencies

- node
- yarn
- sqlite3

## Setup

Run rails setup script
```
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

## Development Environment

Run the development server
```
bundle exec rails server
open http://localhost:3000
```

## Debugging

Add `pry` binding to debug code
```Ruby
def index
  binding.pry
  @variable = SomeModel.find(params[:id])
end
```



## Automated Testing

Run the tests
```
bundle exec rspec
```

Include spec documentation
```
bundle exec rspec --format=documentation
```

View test coverage
```
open coverage/index.html
```

## Static Code Analysis

Run rubocop
```
bundle exec rubocop
```

Run rubycritic
```
bundle exec rubycritic --no-browser
```

## Documentation

Build documentation
```
bundle exec yard
```

Run documentation server
```
bundle exec yard server
open http://localhost:8808
```

Measure documentation coverage
```
bundle exec yardstick .
```

## Security

Run brakeman to check for security issues
```
bundle exec brakeman
```

## Best Practices

Run best practices tool
```
bundle exec rails_best_practices .
```
