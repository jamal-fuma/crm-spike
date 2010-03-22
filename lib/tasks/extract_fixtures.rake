desc <<-EOS
Create YAML test fixtures from data in an existing database.
Defaults to development database. Set RAILS_ENV to override.
EOS

task :extract_fixtures => :environment do
    sql = 

    skip_tables = 
    ActiveRecord::Base.establish_connection
    
    # dump all tables except schema as fixtures
    (ActiveRecord::Base.connection.tables - ["schema_info" ]).each do |table_name|
        i = "000"
        File.open("#{RAILS_ROOT}/test/fixtures/#{table_name}.yml" , 'w' ) do |file|
            data = ActiveRecord::Base.connection.select_all("SELECT * FROM #{table_name}")
            file.write data.inject({}) { |hash, record|
                hash["#{table_name}_#{i.succ!}" ] = record
                hash
            }.to_yaml
        end
    end
end
