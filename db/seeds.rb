require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Personal.destroy_all
ConceptArt.destroy_all

attr_personal = [
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/Wolfen_copy_owptfq.jpg',
    name: 'Wolfen' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/Undead_rnjc3v.jpg',
    name: 'Undead' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/witch_jpxybj.jpg',
    name: 'Witch' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/storm_nkma5w.jpg',
    name: 'Storm' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/resurection_qqwdps.jpg',
    name: 'Resurection' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/Vampire_mrmgmr.jpg',
    name: 'Vampire' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/thief_aawt3r.jpg',
    name: 'Thief' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/paladin_cwzxef.jpg',
    name: 'Paladin' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/orc_r08in2.jpg',
    name: 'Orc' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/space_Marine_bd6syq.jpg',
    name: 'Space Marine' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/Magik_l0cswp.jpg',
    name: 'Magik' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/nightcrawler_qj9rwa.jpg',
    name: 'Nightcrawler' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/mindFlayer_rpjjo5.jpg',
    name: 'Mind Flayer' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/mage2_levmf3.jpg',
    name: 'Mage' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/halfOrcFemale_bust_z503hi.jpg',
    name: 'Half Orc Female' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/Druid_yd7usu.jpg',
    name: 'Druid' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/HalfOrcWarrior_iar5mv.jpg',
    name: 'Half Orc Warrior' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/mage_eekh3b.jpg',
    name: 'Mage' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/centaur_dj7sxl.jpg',
    name: 'Centaur' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/cleric_oyg2sm.jpg',
    name: 'Cleric' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/Gladiator_ki3mhn.jpg',
    name: 'Gladiator' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/fighter_bmapoj.jpg',
    name: 'Fighter' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/colossus_s2sljt.jpg',
    name: 'Colossus' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/DarkPheonix_pzszlo.jpg',
    name: 'Dark Pheonix' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/cyclops_bw5hju.jpg',
    name: 'Cyclops' }
]

attr_concept = [
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481337/NewYearsComp07_lwn8kp.png'},
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481337/Tower_concept01c_p6a7d6.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481337/Riddler_ColorVariation2_uointj.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481337/NewYearsComp01a_oveksk.png' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481337/MotorcycleGangoldschool_SPREADSHEET_yjyzrw.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481336/GothCorp_Lobby2_flat_gf3buu.png' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481336/gang_GCPD_ifunny.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481336/KotalSoldierFemale_lineup02a_t96jws.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481336/gang_kings_Archetype_sllutq.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680481336/MotorcycleYoungSpeed_SPREADSHEET02_gsgdw2.jpg' }
]

attr_personal.each do |pers|
  personal = Personal.new
  file = URI.open(pers[:img])
  personal.image.attach(io: file, filename: "nes.png", content_type: "image/jpg")
  personal.save!
end

attr_concept.each do |conc|
  concept = ConceptArt.new
  file = URI.open(conc[:img])
  concept.image.attach(io: file, filename: "nes.png", content_type: "image/jpg")
  concept.save!
end
