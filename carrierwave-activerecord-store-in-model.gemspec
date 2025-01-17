# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'carrierwave-activerecord-store-in-model/storage/version'

Gem::Specification.new do |gem|
  gem.name        = "carrierwave-activerecord-store-in-model"
  gem.version     = CarrierWave::ActiverecordStoreInModel::VERSION
  gem.authors     = ["Ace Suares,", "Royendgel Silberie"]
  gem.email       = ["ace@suares.com", "royendgel@gmail.com"]
  gem.homepage    = "https://github.com/acesuares/carrierwave-activerecord-store-in-model"
  gem.summary     = %q{Store file data in the database using ActiveRecord.}
  gem.description = %q{Store file data in the database using ActiveRecord, but not in a seperate table, but in the model itself, instead.}
  gem.require_paths = ['lib']
  gem.licenses    = ["MIT"]

  gem.rubyforge_project = "carrierwave-activerecord-store-in-model"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  
  gem.add_runtime_dependency 'carrierwave'

  gem.add_development_dependency 'sqlite3', '~> 1.3'
  gem.add_development_dependency 'rspec', '~> 2.12'

  gem.platform = Gem::Platform::RUBY
  gem.required_ruby_version = '>= 1.9.3'
end
