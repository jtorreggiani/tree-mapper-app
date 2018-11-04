require 'yaml'
require 'yardstick/rake/verify'

options = YAML.load_file('config/yardstick.yml')

Yardstick::Rake::Verify.new(:verify_measurements, options)
