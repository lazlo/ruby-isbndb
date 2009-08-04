require 'rake/testtask'
require 'rake/rdoctask'

task :default => :test

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/test_*.rb'
  t.verbose = true
end

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'ISBNdb'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('TODO')
  rdoc.rdoc_files.include('lib/*.rb')
end
