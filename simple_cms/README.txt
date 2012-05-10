# create rails application with mysql as database
rails new simple_cms -d mysql

cd simple_cms

#start server
rails server

# generate controller demo with view index
rails generate controller demo index

#create database
# login to database
mysql -u root -p
Ne0i23
#create database
create database simple_cms_development

#create user to grant privileges
grant all privileges on simple_cms_development.* to 'simple_cms'@'localhost' identified by 'Ne0i23_simple_cms_user';
quit

# login with user simple_cms to simple_cms database
mysql -u simple_cms -p simple_cms_development
# enter password : Ne0i23_simple_cms_user


# open database.yml in config folder of simple_cms directory
# update username and password in development

rake -T

# to configure production environment. Configure database.yml first and configure username and passwords
rake db:schema:dump RAILS_ENV=production

# create first migration which does nothing 
rails generate migration DoNothingYet

# create model user
rails generate model User

# inside /db/migate/20120509152723_create_users.rb add the following

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.integer "id" no need to create because by default its created 
      t.string "first_name", :limit =>25
      t.string "last_name", :limit =>50
      t.string "email", :default =>"" ,:null =>false
      t.string "password", :limit =>40
      t.timestamps
    end
  end
end

# begin first migration
rake db:migrate

# reverting migration back to very beginning
rake db:migrate VERSION=0

rake db:migrate VERSION=0  RAILS_ENVR=development
# migrate only one 
rake db:migrate VERSION=2010...here the version number goes
rake db:migrate:up VERSION=2010.. here the version number to migrate up goes in


