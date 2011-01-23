Fork of the A/Bingo split testing framework
===========================================
Forked with permission from Patrick McKenzie by Andy Atkinson January 2011

Goals of this fork:

 - Rails 3 only
 - Solid testing suite
 - HTML/CSS design for Abingo Experiments Dashboard out of the box

For project documentation, please refer to the project website:
http://www.bingocardcreator.com/abingo

WARNING: This fork works with Rails 3 only, do not attempt to install this plugin on a Rails 2.x project.

Install
=======
 - `rails plugin install git@github.com:webandy/abingo.git`

Post-install instructions
=========================
 - `rails g` should show available custom generators `abingo_migration` and `abingo_dashboard_stylesheet`. Run each of the generators.
  - `rails g abingo_migration`
  - `rails g abingo_dashboard_stylesheet`
 - Include the `abingo_dashboard` stylesheet in the layout you're using for the dashboard. e.g. `<%= stylesheet_link_tag 'abingo_dashboard' %>`
 - Run the migration, start the server and navigate to the dashboard. For instructions on setting those things up, see the main original project documentation.

Uninstall
=========
 - Running `rails plugin remove abingo` should remove the generated stylesheet file and describe how the generated migration may be reverted manually. 