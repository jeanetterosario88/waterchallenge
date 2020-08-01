The Logbook aka How'd It Go?

This is a full scale Sinatra application that uses:
SQLITE
ActiveRecord
RESTful routes
Sessions
Login/Logout
HTML5


OVERVIEW

This project builds the The Logbook aka The How'd It Go?: a site where a person can keep track of important interactions such as job interviews, auditions, and networking events.

This application implements two classes: Entry and User. A user cannot take any actions outside of signing up, unless they are logged in. Once logged in, a user can edit their login credentials. While logged in, a user can read, edit, create and delete their entries, and then log out. 


DEVELOPMENT

Fork and clone this project. Try this app in your local environment. 

Run the following command inside this project's directory.
$ bundle install
$ rake db:migrate 

$ rake db:seed (if applicable)

Start up local server
$ shotgun 

For interactive console
$ rake console
or
$ tux


FUTURE IMPROVEMENTS

Add confirm password during sign up
Validate date format: mm/dd/yyyy


CONTRIBUTING

Bug reports and pull requests are welcome on GitHub at https://github.com/jeanetterosario88/thelogbook.git. Contributors are expected to adhere to the Contributor Covenant code of conduct.


LICENSE

The project is available as open source under the terms of the https://opensource.org/licenses/MIT
