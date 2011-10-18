spec = Gem::Specification.new do |s|
  s.name = 'perftools.rb'
  s.version = '0.5.6'
  s.date = '2011-01-23'
  s.rubyforge_project = 'perftools-rb'
  s.summary = 'google-perftools for ruby code'
  s.description = 'A sampling profiler for ruby code based on patches to google-perftools'

  s.homepage = "http://github.com/tmm1/perftools.rb"

  s.authors = ["Aman Gupta"]
  s.email = "perftools@tmm1.net"

  s.has_rdoc = false
  s.extensions = 'ext/extconf.rb'
  s.bindir = 'bin'
  s.executables << 'pprof.rb'

  # ruby -rpp -e' pp `git ls-files | grep -v examples`.split("\n").sort '
  s.files = `git ls-files`.split("\n").reject{ |f| f =~ /^examples/ }
  s.add_dependency("archive-tar-minitar", ">= 0.5.2")
end
