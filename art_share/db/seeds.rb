# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    
    u1 = User.create!(username: "Picashaux")
    u2 = User.create!(username: "Bonno")
    u3 = User.create!(username: "Magnus")
    u4 = User.create!(username: "Anyaa")
    u5 = User.create!(username: "Kayitee")
    u6 = User.create!(username: "Mo-not")

    art1 = Artwork.create!(artist_id: u1.id, image_url: "picashausx_art.fake.com/12938", title: "OH PicasNOOO")
    art2 = Artwork.create!(artist_id: u3.id, image_url: "mangus_art.fake.com/51524", title: "BAUX")
    art3 = Artwork.create!(artist_id: u4.id, image_url: "anyaa_art.fake.com/6734", title: "Number 8, in 6 motions")
    art4 = Artwork.create!(artist_id: u6.id, image_url: "moyes.imgs/1235", title: "REALLY REAL REALISM THATS REALISTIC")

    ArtworkShare.create!(artwork_id: art1.id, viewer_id: u2.id)
    ArtworkShare.create!(artwork_id: art2.id, viewer_id: u2.id)
    ArtworkShare.create!(artwork_id: art2.id, viewer_id: u4.id)
    ArtworkShare.create!(artwork_id: art3.id, viewer_id: u6.id)
    ArtworkShare.create!(artwork_id: art3.id, viewer_id: u5.id)
    ArtworkShare.create!(artwork_id: art4.id, viewer_id: u2.id)
    ArtworkShare.create!(artwork_id: art1.id, viewer_id: u2.id)
    ArtworkShare.create!(artwork_id: art4.id, viewer_id: u1.id)
    ArtworkShare.create!(artwork_id: art1.id, viewer_id: u3.id)
    ArtworkShare.create!(artwork_id: art1.id, viewer_id: u5.id)
    ArtworkShare.create!(artwork_id: art3.id, viewer_id: u4.id)
    ArtworkShare.create!(artwork_id: art3.id, viewer_id: u1.id)
    ArtworkShare.create!(artwork_id: art3.id, viewer_id: u6.id)
end