# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#this seed file has associations built in. If necessary you may have to run the folloeing to make sure the associations are setup properly
# rake db:drop:all
# rake db:migrate

User.destroy_all
Shop.destroy_all
Item.destroy_all
Tuneup.destroy_all
Technician.destroy_all
Contact.destroy_all

User.create([{email: "homer@simpson.com", password: "password"
            },
            {email: "bart@simpson.com", password:   "password"
            },
            {email: "marge@simpson.com", password:  "password"
            },
            {email: "lisa@simpson.com", password:   "password"
            }])

Shop.create([{name: "Homer's Shop", detail: "This a place for all types of music lovers. I have loved music for a long time and I hope you may find something you like.", user_id: 1
            },
            { name: "Bart's Shop", detail: "This a place for all types of music lovers. I have loved music for a long time and I hope you may find something you like.", user_id: 2
            },
            { name: "Marge's Shop", detail: "This a place for all types of music lovers. I have loved music for a long time and I hope you may find something you like.", user_id: 3
            },
            { name: "Lisa's Shop", detail: "This a place for all types of music lovers. I have loved music for a long time and I hope you may find something you like.", user_id: 4
            }])

Item.create([{name: "Guitar", year: 2000, condition: "used", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 1
            },
            { name: "Bass Guitar", year: 2001, condition: "used", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 1
            },
            { name: "Drums", year: 1950, condition: "used", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 1
            },
            { name: "Ukele", year: 1920, condition: "used", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 1
            },
            { name: "Slide Bass Guitar", year: 2017, condition: "new", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 1
            },
            { name: "Tamborine", year: 2000, condition: "used", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 1
            },
            { name: "Microphone", year: 1920, condition: "used", detail: "bought this at a garage sale", itemtype:"electronic", shop_id: 1
            },
            { name: "Bass Guitar", year: 2001, condition: "used", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 2
            },
            { name: "Drums", year: 2016, condition: "new", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 2
            },
            { name: "Ukele", year: 2018, condition: "new", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 2
            },
            { name: "Slide Bass Guitar", year: 2017, condition: "new", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 2
            },
            { name: "Tamborine", year: 2018, condition: "new", detail: "bought this at a garage sale", itemtype:"instrument", shop_id: 2
            },
            { name: "Microphone", year: 1920, condition: "used", detail: "bought this at a garage sale", itemtype:"electronic", shop_id: 2

            },
            { name: "Amplifier", year: 2001, condition: "used", detail: "bought this at a garage sale", itemtype:"electronic", shop_id: 3
            },
            { name: "Guitar Tuner", year: 1950, condition: "used", detail: "bought this at a garage sale", itemtype:"gadget", shop_id: 3
            },
            { name: "Capo", year: 1920, condition: "used", detail: "bought this at a garage sale", itemtype:"gadget", shop_id: 3
            },
            { name: "Megaphone", year: 2017, condition: "new", detail: "bought this at a garage sale", itemtype:"electronic", shop_id: 3
            }])

Technician.create([
            {name: "frank"},
            {name: "john"},
            {name: "jimmy"},
            {name: "jack"},
            {name: "lewanda"},
            {name: "ldasha"}])

Tuneup.create([
            {date: "2010-01-10", technician_id: 1, item_id: 1},
            {date: "2011-01-17", technician_id: 1, item_id: 2},
            {date: "2012-01-16", technician_id: 1, item_id: 4},
            {date: "2013-01-15", technician_id: 1, item_id: 5},
            {date: "2015-01-14", technician_id: 1, item_id: 3},
            {date: "2016-01-13", technician_id: 1, item_id: 6},
            {date: "2018-01-12", technician_id: 2, item_id: 7},
            {date: "2010-01-10", technician_id: 2, item_id: 1},
            {date: "2010-02-10", technician_id: 2, item_id: 2},
            {date: "2010-03-10", technician_id: 2, item_id: 4},
            {date: "2010-04-10", technician_id: 2, item_id: 5},
            {date: "2010-05-10", technician_id: 2, item_id: 8},
            {date: "2010-07-12", technician_id: 3, item_id: 9},
            {date: "2010-07-10", technician_id: 4, item_id: 11},
            {date: "2010-07-17", technician_id: 5, item_id: 12},
            {date: "2010-07-16", technician_id: 6, item_id: 13},
            {date: "2010-07-15", technician_id: 3, item_id: 14},
            {date: "2010-07-14", technician_id: 4, item_id: 15},
            {date: "2010-07-13", technician_id: 5, item_id: 16},
            {date: "2010-07-12", technician_id: 6, item_id: 17},
            {date: "2010-08-11", technician_id: 6, item_id: 10}])

Contact.create([{name: "Homer Simpson", address: "1 Street Name", city: "Springfield", state: "MA", zip: "01212", phone:"1234567890", user_id: 1}, {name: "Marge Simpson", address: "1 Street Name", city: "Springfield", state: "MA", zip: "01212", phone:"1234561234", user_id: 2},  {name: "Bart Simpson", address: "1 Street Name", city: "Springfield", state: "MA", zip: "01212", phone:"3214561234", user_id: 3},  {name: "Lisa Simpson", address: "1 Street Name", city: "Springfield", state: "MA", zip: "01212", phone:"1114561234", user_id: 4}])
