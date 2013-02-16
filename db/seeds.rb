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
    application.uid='6b4f2479415b240380179b3aeb5fa93e6746a03afd9b81b1017dcb277d2ce9c7'
    application.secret='d9e9264ed34f9213d95833782a91b2d5f247c97113364d2637e589c4f968cacc'
    application.redirect_uri='urn:ietf:wg:oauth:2.0:oob'
    application.save!
end
