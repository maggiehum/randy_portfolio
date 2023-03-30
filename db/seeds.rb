require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Personal.destroy_all

attr_personal = [
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/Wolfen_copy_owptfq.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/Undead_rnjc3v.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/witch_jpxybj.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/storm_nkma5w.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/resurection_qqwdps.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/Vampire_mrmgmr.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/thief_aawt3r.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/paladin_cwzxef.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/orc_r08in2.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138329/space_Marine_bd6syq.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/Magik_l0cswp.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/nightcrawler_qj9rwa.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/mindFlayer_rpjjo5.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/mage2_levmf3.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/halfOrcFemale_bust_z503hi.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/Druid_yd7usu.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/HalfOrcWarrior_iar5mv.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/mage_eekh3b.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138328/centaur_dj7sxl.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/cleric_oyg2sm.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/Gladiator_ki3mhn.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/fighter_bmapoj.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/colossus_s2sljt.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/DarkPheonix_pzszlo.jpg' },
  { img: 'https://res.cloudinary.com/dd1e1q8xa/image/upload/v1680138327/cyclops_bw5hju.jpg' }
]

attr_personal.each do |pers|
  personal = Personal.new
  file = URI.open(pers[:img])
  personal.image.attach(io: file, filename: "nes.png", content_type: "image/jpg")
  personal.save!
end
