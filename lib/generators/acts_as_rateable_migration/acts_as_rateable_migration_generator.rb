require 'rails/generators/migration'

class ActsAsRateableMigrationGenerator < Rails::Generators::Base 
  include Rails::Generators::Migration

  def self.source_root
    @_acts_as_commentable_source_root ||= File.expand_path("../templates", __FILE__)
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def copy_migration_file
    migration_template 'migration.rb', 'db/migrate/acts_as_rateable_migration' 
  end
end
