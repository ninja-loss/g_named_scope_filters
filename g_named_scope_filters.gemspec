# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "g_named_scope_filters/version"

Gem::Specification.new do |s|
  s.name        = "g_named_scope_filters"
  s.version     = GNamedScopeFilters::VERSION
  s.date        = Time.now.utc.strftime("%Y-%m-%d")
  s.authors     = ["C. Jason Harrelson (midas)"]
  s.email       = ["jason@lookforwardenterprises.com"]
  s.homepage    = "http://github.com/midas/g_named_scope_filters"
  s.summary     = %q{A UI component that generates an unordered list of filters that use named scopes within an ActiveRecord model to filter a list.}
  s.description = %q{A UI component that generates an unordered list of filters that use named scopes within an ActiveRecord model to filter a list.  It is not tied to a table or list specifically as it simply manipulates the url, resulting  in a manipulation of any collection (list, table, etc.) it may be coupled with.}

  s.rubyforge_project = "g_named_scope_filters"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  [
    ['rspec', '>= 2.0.0']
  ].each do |development_dependency|
    s.add_development_dependency *development_dependency
  end

  [
    ['rails',   '>= 2.2.0'],
    ['guilded', '>= 1.0.0']
  ].each do |runtime_dependency|
    s.add_runtime_dependency *runtime_dependency
  end
end
