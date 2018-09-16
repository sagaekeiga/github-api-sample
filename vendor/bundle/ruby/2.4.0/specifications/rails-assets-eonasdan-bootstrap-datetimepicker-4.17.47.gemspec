# -*- encoding: utf-8 -*-
# stub: rails-assets-eonasdan-bootstrap-datetimepicker 4.17.47 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-eonasdan-bootstrap-datetimepicker".freeze
  s.version = "4.17.47"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["rails-assets.org".freeze]
  s.date = "2017-03-01"
  s.description = "bootstrap3 datetimepicker".freeze
  s.homepage = "https://github.com/Eonasdan/bootstrap-datetimepicker".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.4".freeze
  s.summary = "bootstrap3 datetimepicker".freeze

  s.installed_by_version = "2.7.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails-assets-jquery>.freeze, [">= 1.8.3"])
      s.add_runtime_dependency(%q<rails-assets-moment>.freeze, [">= 2.10.5"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails-assets-jquery>.freeze, [">= 1.8.3"])
      s.add_dependency(%q<rails-assets-moment>.freeze, [">= 2.10.5"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails-assets-jquery>.freeze, [">= 1.8.3"])
    s.add_dependency(%q<rails-assets-moment>.freeze, [">= 2.10.5"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
