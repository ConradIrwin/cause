Gem::Specification.new do |gem|
  gem.name = 'cause'
  gem.version = '0.1'

  gem.summary = 'A backport of Exception#cause from Ruby 2.1.0'
  gem.description = "Allows you access to the error that was being handled when this exception was raised."

  gem.authors = ['Conrad Irwin']
  gem.email = %w(conrad@bugsnag.com)
  gem.homepage = 'http://github.com/ConradIrwin/cause'

  gem.license = 'MIT'

  gem.required_ruby_version = '>= 1.8.7'

  gem.files = `git ls-files`.split("\n")
end
