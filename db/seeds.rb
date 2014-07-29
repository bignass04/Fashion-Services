# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
customers = [
  ["Jake", "", "Shields", "3912 New Hampshire Ave NW", "", "Washington", "DC", 20011],
  ["Martin", "S.", "Scorcese", "2321 A St NE", "Apt. 1", "Washington", "DC", 20023],
  ["Blake", "", "Backlash", "2312 Kansas Ave", "Unit B", "Washington", "DC", 20124],
  ["Keegan", "W.", "Philip", "854 16th St", "", "Silver Spring", "MD", 21890],
  ["Raphael", "", "Thomas", "890 East West Hwy", "", "Bethesda", "MD", 22139],
  ["Jane", "", "Kim", "9031 Eisenhower Rd", "", "Alexandria", "VA", 21221],
  ["Amir", "Q.", "Patel", "7654 King St", "Apartment 312", "Rosslyn", "VA", 23112],
  ["Timothy", "", "Dawson", "321 Long Rd", "Apartment 7 Unit 3", "Springfield", "VA", 21212],
  ["Jared", "", "Sumran", "4231 Indian Rd", "Apartment 8", "Arlington", "VA", 21356],
]

Service.create(name: "Hair/Makeup")
Service.create(name: "Models")
Service.create(name: "Management")
Service.create(name: "Lighting")
customers.each do |fname, mname, lname, addy1, addy2, city, state, zip|
  Customer.create(first_name: fname, middle_name: mname, last_name: lname, address_1: addy1, address_2: addy2, city: city, state: state, zip: zip)
end
