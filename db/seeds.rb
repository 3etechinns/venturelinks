# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
foundernames = ["alice", "bob", "carol"]

foundernames.each do |foundername|
  founder = Founder.create
  founder.username = foundername
  founder.email = "#{foundername}@example.com"
  founder.password = "12341234"
  founder.save
end

puts "There are now #{Founder.count} founders in the database."

partnernames = ["david", "evelyn", "frank"]

partnernames.each do |partnername|
  partner = Partner.create
  partner.username = partnername
  partner.email = "#{partnername}@example.com"
  partner.password = "12341234"
  partner.save
end

puts "There are now #{Partner.count} partners in the database."

Venturefund.destroy_all
Venturefund.create!([{id:155, name:"Struck Capital", image_url:"http://static1.squarespace.com/static/551f6446e4b04e3e3534f951/t/55249880e4b0697f95e73344/1484775488573/?format=1500w", address:"6070 W. STUDIO COURT.LA", funding:25, industry:"fintech & enterprise software", intro:"Looking for founders being technologists and are leveraging technology innovations to improve the efficiency of multi-bn traditional industries", partner:"Adam Struck", portfolio:"Postmates Nutanix"},{id:156, name:"Struck Capital", image_url:"http://static1.squarespace.com/static/551f6446e4b04e3e3534f951/t/55249880e4b0697f95e73344/1484775488573/?format=1500w", address:"6070 W. STUDIO COURT.LA", funding:25, industry:"fintech & enterprise software", intro:"Looking for founders being technologists and are leveraging technology innovations to improve the efficiency of multi-bn traditional industries", partner:"Adam Struck", portfolio:"Postmates Nutanix"}])

puts "There are now #{Venturefund.count} venture funds in the database."


Startup.destroy_all
Startup.create!([{id:500, name:"Smarking", image_url:"http://blog.parknews.biz/wp-content/uploads/2015/05/AAASmarkingLogo.jpg", address:"145 9th St. Ste. 105 SF", funding:5, industry:"enterprise software", intro:"Real-time data analytics for the parking industry", founder:"Wen Sang & Maokai Lin", description:"Smarking is a team of data scientists, PhDs, engineers, and business professionals who set out on a journey to bring cutting edge solutions to the parking world. Frustrated by the stagnation of data analytics and yield management technologies in parking, the Smarking team is working to make the lives of parking professionals and parkers easier by bringing innovation to this $50 billion global industry."},{id:505, name:"Smarking", image_url:"http://blog.parknews.biz/wp-content/uploads/2015/05/AAASmarkingLogo.jpg", address:"145 9th St. Ste. 105 SF", funding:5, industry:"enterprise software", intro:"Real-time data analytics for the parking industry", founder:"Wen Sang & Maokai Lin", description:"Smarking is a team of data scientists, PhDs, engineers, and business professionals who set out on a journey to bring cutting edge solutions to the parking world. Frustrated by the stagnation of data analytics and yield management technologies in parking, the Smarking team is working to make the lives of parking professionals and parkers easier by bringing innovation to this $50 billion global industry."}])

puts "There are now #{Startup.count} startups in the database."
