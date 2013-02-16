# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

case Rails.env
when "development"
    Passport.create(email: 'lookisliu@gmail.com', password: 'abc12345678')

    application=Doorkeeper::Application.new
    application.name='TestApplication'
    application.redirect_uri='urn:ietf:wg:oauth:2.0:oob'
    application.save!
end
