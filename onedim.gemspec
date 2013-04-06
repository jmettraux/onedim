
Gem::Specification.new do |s|

  s.name = 'onedim'

  s.version = File.read(
    File.expand_path('../lib/onedim/version.rb', __FILE__)
  ).match(/ VERSION *= *['"]([^'"]+)/)[1]

  s.platform = Gem::Platform::RUBY
  s.authors = [ 'John Mettraux' ]
  s.email = [ 'jmettraux@gmail.com' ]
  s.homepage = 'https://github.com/jmettraux/onedim'
  #s.rubyforge_project = 'ruote'
  s.summary = 'playground for one dimensional, two states, cellular automata'

  s.description = %{
playground for one dimensional, two states, cellular automata
  }.strip

  #s.files = `git ls-files`.split("\n")
  s.files = Dir[
    'Rakefile',
    'lib/**/*.rb', 'spec/**/*.rb', 'test/**/*.rb',
    '*.gemspec', '*.txt', '*.rdoc', '*.md'
  ]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '>= 2.13.0'

  s.require_path = 'lib'
end

