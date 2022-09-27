# How to use RSpec from scratch without Ruby on Rails

### Creates Gemfile file
`bundle init`

### Add RSpec to the project
```bash
cat <<EOT >> Gemfile
gem "rspec"
gem "rspec-expectations"
EOT
```

### Install Gems locally inside of vendor/bundle
`bundle install --path vendor/bundle`


### Initialize RSpec
`bundle exec rspec --init`

### Docs
RSpec Docs
https://relishapp.com/rspec/rspec-core/v/3-11/docs

FactoryBot - Getting Started
https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md

Better Specs
https://www.betterspecs.org/
