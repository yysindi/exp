# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Clearing database'

Job.destroy_all
Application.destroy_all
User.destroy_all

puts "creating jobs...."
​user_1 = User.create(name: 'Jared', email: 'jared@test.com', password: '123456', profile_description: "recent psychology graduate looking to get a job using react",profile_img:"https://kitt.lewagon.com/placeholder/users/monsieurpaillard" , linked_in: "Jared123",desired_industry: "Finance",twitter_url:"https://twitter.com/royalfamily")

user_2 = User.create(name: 'Keith', email: 'keith@test.com', password: '123456', profile_description: "recent psychology graduate looking to get a job using ruby",profile_img:"https://kitt.lewagon.com/placeholder/users/monsieurpaillard" , linked_in: "https://www.linkedin.com/in/alexhaumer/", desired_industry: "technology", twitter_url:"https://twitter.com/nytimes" )

website = ['https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/', 'https://www.google.com/']

about = ['A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development' ]

company_name = ['Beyond Retail', 'Crown commertial service', 'Frasers group', 'Atradius', 'OP', 'p', 'Merkle' ]

paid = [0,1,1,1,1,0,0] 

accepting_applications = [1,1,1,1,1,1,1]

compensation = [0, 150, 100, 200, 350, 0, 0]

start_date = ['2021-07-02', '2021-07-02', '2021-07-02', '2021-07-02', '2021-07-02', '2021-07-02', '2021-07-02']

end_date = ['2021-07-12', '2021-07-12', '2021-07-12', '2021-07-12', '2021-07-12', '2021-07-12', '2021-07-12']

title = ["Full stack developer", "Product design Inten", "Junior analyst", "HR Intern", "Ruby on rails developer", "Business development intern", "Junior business analyst"]

logo = ['https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/7e71a9fd7c05ab2be421996da6d57199',
'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/f04e20756d6763c92e06eeb93bff15e6',
'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/41018f69be8d075730f8a6635b331592',
'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/129dba756af553ff5146ad4be785a370',
'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/cfb00208009a2a0fd241c886f2367f05',
'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/2bbe12945b43922a6c27e7db6f03cc03',
'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/c9c14458a919176b6f04fb2519d40eb1']

industry = ['Technology', 'Marketing', 'Fintech', 'Education', 'Technology', 'Technology', 'Fintech']

description = ['We are looking for a talented Graduate/Junior Frontend Developer who will play a significant role in creating best in class interfaces and outstanding interactive consumer apps. Whilst you may not have a lot of industry experience you will be able to demonstrate a passionate interest in rich, creative interface design and the latest technologies and development processes. You are a team player, can communicate ideas articulately and a fervent desire to learn quickly.',

'As a New Product Innovation (NPI) graduate, you’ll be sketching, prototyping, testing, failing and refining to deliver the high standards of product development Dyson is known for, working on ideas that will disrupt and transform markets.
You’ll need to be thoroughly hands-on, practically applying your technical knowledge with a creative flair to ensure that all engineering problems are resolved thoroughly.',
'Our Junior Commercial Analyst will have contact with most departments in the business on a weekly basis including our warehouse, transport team, quality team and our Outbases, so we need someone who can communicate with people on all levels in a friendly and professional way. You will report to the Commercial Manager and Senior Commercial Analyst and work very closely with our whole Commercial team to make sure we always have a full understanding of the cost areas and P&L.',
'Kortext has seen significant growth in the last 12 months and this role is key to driving our expansion by continuing to build on this success. This varied role will help develop strong relationships with internal stakeholders supporting with all aspects of HR from recruitment to onboarding.
Reporting into the HR Director this role requires an enthusiastic HR assistant looking for a challenge and growth in an exciting company. Learning from an experienced team this role would be perfect for a graduate or someone looking to take their first steps into the world of HR and Recruitment.',
'Founded in 2013, Healios is a leading specialist digital healthcare company working to empower patients and families affected by mental health, autism and ADHD conditions to support long-term outcomes and wellbeing. Our mission is to bring exceptional healthcare to anyone, anytime, anywhere.
Do you take pride in writing clean Ruby code? Come join our team and help us build amazing things.
We’re looking for someone with a passion for programming and for writing beautiful code. You will join a team of exceptional developers working in a fast-paced environment to deliver world-class software.', 
'KT Media Recruitment is looking for a Business Development Consultant to join a fast growing technology company who is the leading provider of global legal information, delivered through intelligent technologies and solutions.
My client is looking for high achievers with a passion for sales and technology to join their rapidly expanding business development team.
This is a remote role, and you will report directly to the Head of Business Development - Global Markets and form part of their UK based team.' ,
'As a member of the Transformation Team, you will be right at the centre of our biggest challenges and opportunities. Our purpose is to forge best-in-class experiences for our customers and meaningful changes for teams. We put the building blocks into place to support sustainable growth. We are not about hype or buzzwords. We’re about the little and big improvements and everything in between.'
]

location = [ 'London', 'Remote', 'Remote', 'Brighton', 'Nottingham', 'London', 'Remote']

counter = 0

7.times do
  job = Job.new(title: title[counter] ,description: description[counter],location:location[counter], about: about[counter], website: website[counter], industry: industry[counter], logo: logo[counter], paid: paid[counter], compensation: compensation[counter], start_date: start_date[counter], end_date: end_date[counter], accepting_applications: accepting_applications[counter], company_name: company_name[counter])
  job.save
  counter += 1
end

p 'Completed!!!!!!!!!!!!!!!!!!!!'