# acsblog
1. Scope
   The scope of this document is to explain the steps involved in deploying ACS report application to Ruby on Rails framework and run dynamic reports on the web server.

2. Overview system requirement
   The following software package have to be installed, the packages can be downloaded from http://railsinstaller.org/en website: 
   ** Ruby  - version 2.2.4
   ** Rails  - version 4.2.6
   ** Sqlite3  - version 3.8.7.2

3. Overview database tables and views
   Four tables are created to load report data from cvs files and two views are created for report generation.
   Table - e_income_data hold 5 years estimates summary data.
   Table - m_income_data, hold 5 year margin error summery data. 
   Table – sf_geography, hold 2013 geography data.
   Table – us_zip , hold data for USA state and zip code.
   View – estimates_summary, hold estimate summary data, geography data, and USA state information.
   View – margin_error_summary, hold margin error summary data, geography data, and USA state information.

4. Application deployment and file/folder structure
   After install bundle package for ruby on rails, deploy acsblog package on your project directory. Here is Linux command:
   $ Unzip acsblog.zip –d  /project
   The acsblog directory has a number of auto-generated files and folders that make up the structure of a Rails application. Here’s folder and files sturecture: 
   app/   Contains the controllers, models, views, helpers, mailers and assets for your application.
   ./controllers/  welcome_controller.rb, estimates_summaries_controller.rb, margin_error_summaries_controller.rb           
   ./models/  estimates_summary.rb, margin_error_summary.rb
   ./views/estimates_summaries/   _form.html.erb, index.html.erb, search.html.erb
   ./views/margin_error_summaries/   _form.html.erb, index.html.erb, search.html.erb
   ./view/welcome/   index.html.erb
   bin/   Contains the rails script that starts your app and can contain other scripts you use to setup, deploy or run your application.
   config/   Configure your application's routes, database, and more. 
   config/   database.yml, routes.rb
   db/	 Database file holds schema and data, as well as the database migrations. Refer to acsdb_schema.txt
   db/   acsdb.sqlite2
   lib/	 Extended modules for your application.
   log/	 Application log files.
   public/  The only folder seen by the world as-is. Contains static files and compiled assets.
   test/   Unit tests, fixtures, and other test apparatus. 
   tmp/	 Temporary files (like cache, pid, and session files).
   vendor/  A place for all third-party code. In a typical Rails application this includes vendored gems.

5. Starting up Web server 
   Start a web server from the acsblog directory:
   $ acsblog/rails server

6. Running report application
   Open a browser window and navigate to welcome page by URL http://localhost:3000. The page has two links to link to Estimates report and Margin error report. Search report either by state abbreviations or get all state data.
