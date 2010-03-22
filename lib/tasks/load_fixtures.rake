desc <<-EOS
Load db  YAML test fixtures created from data in an existing database.
Defaults to development database. Set RAILS_ENV to override.
EOS

task :load_fixtures => :environment do
    require 'active_record/fixtures'
    ActiveRecord::Base.establish_connection
    
    Fixtures.create_fixtures("test/fixtures",
        ActiveRecord::Base.configurations[:fixtures_load_order])

end
