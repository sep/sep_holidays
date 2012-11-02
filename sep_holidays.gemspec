Gem::Specification.new do |s|
  s.name        = 'sep_holidays'
  s.version     = '0.0.4'
  s.date        = '2011-12-19'
  s.summary     = "Date mixin for SEP company holidays"
  s.description = "Extend Date with a mixin to check if a date is an SEP company holiday"
  s.authors     = ["Matt Swanson"]
  s.email       = 'mdswanson@sep.com'
  s.files       = ["lib/sep_holidays.rb"]
  s.test_files  =  Dir.glob('test/lib/*.rb')
  s.homepage    = 'https://github.com/sep/sep_holidays'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end
