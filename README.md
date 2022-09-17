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
