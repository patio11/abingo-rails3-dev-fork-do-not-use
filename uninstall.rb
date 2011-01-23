# cleanup generated files
require 'fileutils'
Dir.glob(File.join('db', 'migrate', '**')){|f| FileUtils.rm(f.grep(/_abingo_migration/)) }
FileUtils.rm(File.join(Rails.root, 'public', 'stylesheets', 'abingo_dashboard.css'))