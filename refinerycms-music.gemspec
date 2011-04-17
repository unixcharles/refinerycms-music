Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-music'
  s.version           = '0.2.1'
  s.summary           = 'Music engine for Refinery CMS'
  s.email             = "unixcharles@gmail.com"
  s.homepage          = "http://github.com/unixcharles/refinerycms-music"
  s.date              = '2011-04-17'
  s.license           = "MIT"

  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
