# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{stupid_formatter}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christoph Olszowka"]
  s.date = %q{2010-02-13}
  s.description = %q{A stupid formatter for piping text through markup processors with a unified API}
  s.email = %q{christoph at olszowka dot de}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/stupid_formatter.rb",
     "stupid_formatter.gemspec",
     "test/fixtures/erb_coderay_markdown_example.txt",
     "test/fixtures/erb_coderay_markdown_expectation.txt",
     "test/helper.rb",
     "test/test_erb_formatter.rb",
     "test/test_rdiscount_formatter.rb",
     "test/test_stupid_formatter.rb"
  ]
  s.homepage = %q{http://github.com/colszowka/stupid_formatter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A stupid formatter for piping text through markup processors}
  s.test_files = [
    "test/test_stupid_formatter.rb",
     "test/helper.rb",
     "test/test_erb_formatter.rb",
     "test/test_rdiscount_formatter.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdiscount>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<coderay>, [">= 0.9.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<rdiscount>, [">= 1.5.0"])
      s.add_dependency(%q<coderay>, [">= 0.9.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<rdiscount>, [">= 1.5.0"])
    s.add_dependency(%q<coderay>, [">= 0.9.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

