# provide uninstall instructions to user
require 'fileutils'

migration_file = nil
Dir.glob(File.join('db', 'migrate', '**')){|f| migration_file = f.grep(/_abingo_migration/) }
if migration_file
  puts "Abingo migration file #{migration_file} has not been modified. Run the down method manually to reverse the migration."
end

if File.exists?(File.join(Rails.root, 'public', 'stylesheets', 'abingo_dashboard.css'))
  stylesheet_path = File.join(Rails.root, 'public', 'stylesheets', 'abingo_dashboard.css')
  puts "Removing the abingo dashboard stylesheet file: #{stylesheet_path}"
  FileUtils.rm(stylesheet_path)
end
