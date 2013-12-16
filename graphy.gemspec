lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphy/version'

Gem::Specification.new do |s|
  s.name          = 'graphy'
  s.version       = Graphy::VERSION
  s.authors       = ['Travis Dempsey']
  s.email         = ['travis@infochimps.com']
  s.licenses      = ['Apache 2.0']
  s.homepage      = 'https://github.com/kornypoet/graphy.git'
  s.summary       = 'Ruby graph theory library'
  s.description   = <<-DESC.gsub(/^ {4}/, '').strip
  DESC

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(/^bin/){ |f| File.basename(f) }
  s.test_files    = s.files.grep(/^spec/)
  s.require_paths = ['lib']
  
  s.add_dependency('PriorityQueue', '0.1.2')
end
