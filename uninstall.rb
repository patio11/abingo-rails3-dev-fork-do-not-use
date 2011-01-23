# provide uninstall instructions to user
require 'fileutils'

migration_file = nil
Dir.glob(File.join('db', 'migrate', '**')){|f| migration_file = f.grep(/_abingo_migration/) }
if migration_file
  puts "Abingo migration file #{migration_file} has not been modified. Run the down method manually to reverse the migration."
end

if stylesheet = File.exists?(File.join(Rails.root, 'public', 'stylesheets', 'abingo_dashboard.css'))
  puts "Removing the abingo dashboard stylesheet file: #{stylesheet}"
  FileUtils.rm(File.join(Rails.root, 'public', 'stylesheets', 'abingo_dashboard.css'))
end
