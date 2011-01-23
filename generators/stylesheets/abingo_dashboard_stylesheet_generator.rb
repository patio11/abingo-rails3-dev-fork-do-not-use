require 'rails/generators'

class AbingoDashboardStylesheetGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_stylesheet
    copy_file 'abingo_dashboard.css', "public/stylesheets/abingo_dashboard.css"
  end
end