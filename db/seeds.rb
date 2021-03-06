require 'open-uri'

puts 'Deleting db...'
[Album, Artist].each(&:destroy_all)

puts 'Creating artists...'
URL = 'https://raw.githubusercontent.com/rodloboz/lw-fullstack/master/airtunes/data/airtunes.json'

# response = open(URL).read

# artists = JSON.parse(response)

artists = [
  {
    "name": "Jimi Hendrix",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1532732218/jimi_hendrix_kyegew.jpg",
    "albums": [
      {
        "title": "Axis: Bold as Love",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542167/iu_hagpp0.jpg"
      },
      {
        "title": "Are You Experienced",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542183/iu_l4fc44.jpg"
      },
      {
        "title": "Electric Ladyland",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542203/iu_w2gvcd.jpg"
      }
    ]
  },

  {
    "name": "Gang Starr",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1532732218/gang_starr_roc18v.jpg",
    "albums": [
      {
        "title": "No More Mr. Nice Guy",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542227/iu_znlkp5.jpg"
      },
      {
        "title": "Full Clip: A Decade of Gang Starr",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542249/iu_yvgaox.jpg"
      },
      {
        "title": "Daily Operation",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542281/iu_jipfnl.jpg"
      }
    ]
  },

  {
    "name": "Refused",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1532732218/refused_uj5ose.jpg",
    "albums": [
      {
        "title": "Songs to Fan the Flames of Discontent",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542304/iu_uacfko.jpg"
      },
      {
        "title": "The Shape of Punk to Come",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542349/iu_anrk4m.jpg"
      }
    ]
  },

  {
    "name": "Cookin' Soul",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1532732217/cookin_soul_nmjhbx.jpg",
    "albums": [
      {
        "title": "The Remixes Vol. 1",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542382/iu_qku01a.jpg"
      },
      {
        "title": "Summer Waves",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542406/iu_nryymv.jpg"
      }
    ]

  },

  {
    "name": "Fu Manchu",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1532732218/fu_manchu_m6puwu.jpg",
    "albums": [
      {
        "title": "In Search Of...",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542431/iu_v4llqa.jpg"
      },
      {
        "title": "The Action is Go",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542462/iu_xe3hav.jpg"
      }
    ]
  },

  {
    "name": "Little Brother",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1532732247/littler_brother_ubz289.jpg",
    "albums": [
      {
        "title": "The Minstrel Show",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542493/iu_hkbftc.jpg"
      }
    ]
  },

  {
    "name": "Pantera",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542140/iu_jedvwr.jpg",
    "albums": [
      {
        "title": "Far Beyond Driven",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542636/iu_ut1blh.jpg"
      },
      {
        "title": "The Great Southern Trendkill",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542588/iu_prlzsu.jpg"
      }
    ]
  },

  {
    "name": "From Monument to Masses",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542836/iu_ivj8qi.jpg",
    "albums": [
      {
        "title": "The Impossible Leap in One Hundred Simple Steps",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542766/iu_xruqtl.jpg"
      }
    ]
  },

  {
    "name": "At the Drive-In",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576542945/iu_y50df5.jpg",
    "albums": [
      {
        "title": "Relationship of Command",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576543066/iu_npekss.jpg"
      }
    ]
  },

  {
    "name": "Rage Against the Machine",
    "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576543149/iu_jcytje.jpg",
    "albums": [
      {
        "title": "Rage Against the Machine",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576543220/iu_aypwfs.jpg"
      },
      {
        "title": "Evil Empire",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576543277/26d88898d19073019e93093fda2fb971.953x953x1_hjwldx.jpg"
      },
      {
        "title": "The Battle of Los Angeles",
        "image_url": "https://res.cloudinary.com/opratododia/image/upload/v1576543354/4829818299_6cc386c2da_nvpnh4.jpg"
      }
    ]
  }
]
artists.each do |artist|
  attrs = artist.except(:albums)
  albums = artist.delete(:albums)
  Artist.create!(attrs).tap do |artist|
    artist.albums.create!(albums)
  end
end

puts "Created #{Artist.count} artists."

puts 'Finished!'
