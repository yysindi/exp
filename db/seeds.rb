
p 'Clearing database'

ExpScore.destroy_all
Application.destroy_all
Job.destroy_all
User.destroy_all

puts "creating users..."
user_first = User.create(name: 'Jared', email: 'jared@test.com', password: '123456', profile_description: "I'm a recent psychology graduate who attended the Le Wagon Lisbon bootcamp in March 2021. I'm looking for short gigs in London-based startups (or remote) in digital marketing and/or software development.", profile_img:"https://kitt.lewagon.com/placeholder/users/monsieurpaillard", linked_in: "https://www.linkedin.com/in/jared/", desired_industry: "Finance", twitter_url:"https://twitter.com/royalfamily")
user_second = User.create(name: 'Keith', email: 'keith@test.com', password: '123456', profile_description: "I graduated last autumn with a master's in Islamic History from Durham university. I'm very passionate about HR, and would love to complete gigs for companies based in the North of England.", profile_img:"https://kitt.lewagon.com/placeholder/users/monsieurpaillard", linked_in: "https://www.linkedin.com/in/keith/", desired_industry: "technology", twitter_url:"https://twitter.com/nytimes")

puts "creating jobs..."

job1 = Job.create(title: "Front End Developer",
  description: 'We are looking for a talented Graduate/Junior Frontend Developer who will play a significant role in creating best in class interfaces and outstanding interactive consumer apps. Whilst you may not have a lot of industry experience you will be able to demonstrate a passionate interest in rich, creative interface design and the latest technologies and development processes. You are a team player, can communicate ideas articulately and a fervent desire to learn quickly.',
  location: 'London',
  about: 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development',
  website: 'https://www.google.com/',
  industry: 'Technology',
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/7e71a9fd7c05ab2be421996da6d57199',
  paid: true,
  compensation: 300,
  start_date: '2021-07-02',
  end_date: '2021-08-02',
  accepting_applications: true,
  company_name: 'Beyond Retail',
  completed: true)

job2 = Job.create(title: "Product design Intern",
  description: 'As a New Product Innovation (NPI) graduate, you’ll be sketching, prototyping, testing, failing and refining to deliver the high standards of product development Dyson is known for, working on ideas that will disrupt and transform markets. You’ll need to be thoroughly hands-on, practically applying your technical knowledge with a creative flair to ensure that all engineering problems are resolved thoroughly.',
  location: 'Bath', 
  about: 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development',
  website: 'https://www.google.com/', 
  industry: 'Product', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/f04e20756d6763c92e06eeb93bff15e6',
  paid: true, 
  compensation: 170, 
  start_date: '2021-07-12',
  end_date: '2021-08-26', 
  accepting_applications: true, 
  company_name: 'Crown commertial service',
  completed: true)

job3 = Job.create(title: "Junior analyst",
  description: 'Our Junior Commercial Analyst will have contact with most departments in the business on a weekly basis including our warehouse, transport team, quality team and our Outbases, so we need someone who can communicate with people on all levels in a friendly and professional way. You will report to the Commercial Manager and Senior Commercial Analyst and work very closely with our whole Commercial team to make sure we always have a full understanding of the cost areas and P&L.',
  location: 'London', 
  about: 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 
  website: 'https://www.google.com/', 
  industry: 'Technology', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/41018f69be8d075730f8a6635b331592',
  paid: false, 
  compensation: 0, 
  start_date: '2021-08-11',
  end_date: '2021-08-25', 
  accepting_applications: true, 
  company_name: 'Frasers group',
  completed: true)

job4 = Job.create(title: "HR Intern",
  description: 'Kortext has seen significant growth in the last 12 months and this role is key to driving our expansion by continuing to build on this success. This varied role will help develop strong relationships with internal stakeholders supporting with all aspects of HR from recruitment to onboarding. Reporting into the HR Director this role requires an enthusiastic HR assistant looking for a challenge and growth in an exciting company. Learning from an experienced team this role would be perfect for a graduate or someone looking to take their first steps into the world of HR and Recruitment.',
  location: 'Remote or London', 
  about: 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development',
  website: 'https://www.google.com/', 
  industry: 'Human Resources', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/129dba756af553ff5146ad4be785a370',
  paid: true, 
  compensation: 200, 
  start_date: '2021-09-02',
  end_date: '2021-09-16', 
  accepting_applications: true, 
  company_name: 'Atradius')

job5 = Job.create(title: "Ruby on Rails Developer",
  description: 'Founded in 2013, Healios is a leading specialist digital healthcare company working to empower patients and families affected by mental health, autism and ADHD conditions to support long-term outcomes and wellbeing. Our mission is to bring exceptional healthcare to anyone, anytime, anywhere. Do you take pride in writing clean Ruby code? Come join our team and help us build amazing things. We’re looking for someone with a passion for programming and for writing beautiful code. You will join a team of exceptional developers working in a fast-paced environment to deliver world-class software.',
  location: 'London', 
  about: 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 
  website: 'https://www.google.com/', 
  industry: 'Technology',
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/cfb00208009a2a0fd241c886f2367f05',
  paid: true, 
  compensation: 300, 
  start_date: '2021-10-01',
  end_date: '2021-11-15', 
  accepting_applications: true, 
  company_name: 'OP')

job6 = Job.create(title: "Business Developement Intern",
  description: 'KT Media Recruitment is looking for a Business Development Consultant to join a fast growing technology company who is the leading provider of global legal information, delivered through intelligent technologies and solutions. My client is looking for high achievers with a passion for sales and technology to join their rapidly expanding business development team. This is a remote role, and you will report directly to the Head of Business Development - Global Markets and form part of their UK based team.',
  location: 'Remote', 
  about: 'A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development', 
  website: 'https://www.google.com/', 
  industry: 'Sales', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/2bbe12945b43922a6c27e7db6f03cc03',
  paid: false, 
  compensation: 0, 
  start_date: '2021-07-02',
  end_date: '2021-08-02', 
  accepting_applications: true, 
  company_name: 'Protector')

job7 = Job.create(title: "Junior business analyst",
  description: 'We are looking for a talented Graduate/Junior Frontend Developer who will play a significant role in creating best in class interfaces and outstanding interactive consumer apps. Whilst you may not have a lot of industry experience you will be able to demonstrate a passionate interest in rich, creative interface design and the latest technologies and development processes. You are a team player, can communicate ideas articulately and a fervent desire to learn quickly.',
  location: 'London', 
  about: 'As a member of the Transformation Team, you will be right at the centre of our biggest challenges and opportunities. Our purpose is to forge best-in-class experiences for our customers and meaningful changes for teams. We put the building blocks into place to support sustainable growth. We are not about hype or buzzwords. We’re about the little and big improvements and everything in between.', 
  website: 'https://www.google.com/', 
  industry: 'Technology', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/c9c14458a919176b6f04fb2519d40eb1',
  paid: true, 
  compensation: 300, 
  start_date: '2021-07-02',
  end_date: '2021-08-02', 
  accepting_applications: true, 
  company_name: 'Merkle')

job8 = Job.create(title: "Frontend Developer",
  description: 'We are looking for an agile-minded mid-senior level Frontend developer. You will be creating and maintaining central features across our global website and contributing to and working alongside an established development team. Collaborate and communicate with design & Product teams, to understand user experience',
  location: 'Swansea', 
  about: 'Veeqo is an award winning high growth tech start-up company which has customers around the world and with ambitions to become the best platform for ecommerce retailers to manage their business.', 
  website: 'https://www.google.com/', 
  industry: 'Technology', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/adb557eacfd2179f898a087ca0baf178',
  paid: false, 
  compensation: 0, 
  start_date: '2021-12-02',
  end_date: '2022-01-01', 
  accepting_applications: true, 
  company_name: 'Veeqo')

job9 = Job.create(title: "Industrial / Product Design Intern",
  description: 'Life as one of our graduate interns is challenging, extremely insightful and rewarding. As we continue to innovate and find new and exciting products for our business, we value the new perspective and ideas that graduates can bring, supporting existing teams to be more productive and adding value to projects and rewards we develop.',
  location: 'Heathrow', 
  about: 'tcc is the world leading provider or retail loyalty. Proudly independent for 30 years we have led the way by designing and implementing tailor made solutions for most of the worlds leading grocery retailers.', 
  website: 'https://www.google.com/', 
  industry: 'Product', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/26801726b65d21603997b8fafd115ee1',
  paid: false, 
  compensation: 0, 
  start_date: '2021-11-04',
  end_date: '2021-11-18', 
  accepting_applications: true, 
  company_name: 'TCC Global')

job10 = Job.create(title: "Junior Designer - Homes Hub",
  description: 'You will be Involved In the design of regular pages and features across all titles and the design for digital, events and brand marketing. You will be required to check colour proofs, ensuring pages are of an excellent standard and any corrections or instructions have been actioned. General administrative tasks may be carried out to support the art team.',
  location: 'Remote', 
  about: 'We’re the UK’s leading premium publisher, and the people behind iconic media brands such as Cosmopolitan, Esquire, Elle, Harper’s Bazaar and Country Living. We’ve created a working environment that encourages everyone to pull together. We never stop looking for brave new ideas.', 
  website: 'https://www.google.com/', 
  industry: 'Marketing', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/5ac2a89594ff26e5ef6eb04a1d0bddd7',
  paid: true, 
  compensation: 120, 
  start_date: '2021-09-22',
  end_date: '2021-10-02', 
  accepting_applications: true, 
  company_name: 'Hearst Media Services')

job11 = Job.create(title: "Junior Operations Analyst",
  description: 'The successful candidate will have a natural flair for analysis and MS Excel. The role will be responsible for providing Data Analysis and producing MI using technology such as s Tableau as well as producing reports, data manipulation and be an advanced MS Excel user.',
  location: 'Remote', 
  about: 'Here at ExamWorks we have a new and exciting opportunity to join our PIP Team, working as a Junior Operations Analyst. The role will be on a hybrid working model both home and office based as required.',
  website: 'https://www.google.com/', 
  industry: 'Business', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/40c28801a00879fa4a9effc3c6063878',
  paid: true, 
  compensation: 240, 
  start_date: '2021-07-16',
  end_date: '2021-08-02', 
  accepting_applications: true, 
  company_name: 'Examworks Ltd ')

job12 = Job.create(title: "Data Analyst",
  description: 'Deliver analytical reports with the support of the team. Carry out ad hoc analysis to support the work of the organisation. Develop analytical projects with stakeholders. Support in contract management for projects within the team',
  location: 'Guildford', 
  about: 'Acas has been recognised for its Diversity and Inclusion in the workplace from the Employers Network for Equality and Inclusion awards – Disability Confident Highly Commended; Pay Gap award winner and Overall winner for public sector organisations.', 
  website: 'https://www.google.com/', 
  industry: 'Technology', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/24ff4628998f8a75843720e968309b30',
  paid: false, 
  compensation: 0, 
  start_date: '2022-01-02',
  end_date: '2022-02-01', 
  accepting_applications: true, 
  company_name: 'Acas')

job13 = Job.create(title: "Marketing Graduate Trainee",
  description: 'As a Graduate Trainee our aim is to develop you to be a leader within the marketing department. As such your development is critical to us. During your first two years we will provide you with quarterly feedback on how you are doing in your role and discuss with you how best you can develop your skills.',
  location: 'Dorset', 
  about: 'With a marketing team of 45 people and 25 years experience training and developing marketing graduates, we believe 288 Group offers the best Graduate Training for Marketers in Dorset.', 
  website: 'https://www.google.com/',
  industry: 'Marketing',
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/5cd4bce25bae43ad14fb8a0c6aae941e',
  paid: true, 
  compensation: 300, 
  start_date: '2021-09-16',
  end_date: '2021-10-15', 
  accepting_applications: true, 
  company_name: '288 Group')

job14 = Job.create(title: "Graduate Software Developer Consultant ",
  description: 'As a Software Developer Consultant at Netcompany, you have two roles; a Consultant and a Developer. As a consultant, you’ll interact with our clients, work alongside a multi-disciplinary team and develop problem-solving skills. As a developer, you are keen to use new technologies and working with your team to develop solutions for our clients.',
  location: 'Remote', 
  about: 'We are a Microsoft Gold partner and use web-based languages and Microsoft technologies on or projects. A great company with big ambitions to expend in the IT consultancy field, with a flexible work enviroment and a cultur of hard work and personal development',
  website: 'https://www.google.com/', 
  industry: 'Technology', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/cc86b449a3f8df8a5ebe554da21fef2b',
  paid: true, 
  compensation: 350, 
  start_date: '2021-09-02',
  end_date: '2021-10-02', 
  accepting_applications: true, 
  company_name: 'Deloitte')

job15 = Job.create(title: "Product Marketing Intern",
  description: 'We are looking for an Intern to join our Product Marketing team. Our ideal candidate will have a passion for advertising, technology, content and marketing. This is a key role in supporting the Product Marketing team in its everyday tasks, but also interacting with the Sales, Marketing and Product teams.',
  location: 'Leeds',
  about: 'At Quantcast, we are the champions of a free and open internet. We are the creators of a new and innovative intelligent audience platform that empowers brands, agencies, and publishers to know and grow their audiences, reaching people in the right place, at the right moment.', 
  website: 'https://www.google.com/', 
  industry: 'Marketing', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_logo/1877f141b92f7e8477d94d0ef912f390',
  paid: false, 
  compensation: 0, 
  start_date: '2021-07-05',
  end_date: '2021-08-04', 
  accepting_applications: true, 
  company_name: 'Quantcast')

job16 = Job.create(title: "Business Development Manager",
  description: 'This is an exciting opportunity to join a thriving national charity, to utilise a wide range of commercial and interpersonal skills and to develop the way our services support children. you will need to be a good writer, communicating ideas effectively on paper with an ability to analyse large volumes of information in order to develop clear and compelling responses to tenders. A rigorous attention to detail is also essential.',
  location: 'Crawley', 
  about: 'At Barnardos we believe in children – no matter who they are, what they have done or what they have been through. Please read about our basis and values following the link below. You will be asked questions relating to them as part of the recruitment process for this role.', 
  website: 'https://www.google.com/', 
  industry: 'Business', 
  logo: 'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/2b4be11da88ca8d92e59f2384f82ac0e',
  paid: false, 
  compensation: 0, 
  start_date: '2021-09-22',
  end_date: '2021-10-02', 
  accepting_applications: true, 
  company_name: 'Barnardos')
  
puts "creating exp scores..."
exp1 = ExpScore.create(user: User.first, job: job1, industry: "Web Development", exp_value: 350)
exp2 = ExpScore.create(user: User.second,job: job2, industry: "Design", exp_value: 560)
exp3 = ExpScore.create(user: User.first, job: job3, industry: "Data Analysis", exp_value: 180)
exp4 = ExpScore.create(job: job4, industry: "Human Resources", exp_value: 155)
exp5 = ExpScore.create(job: job5, industry: "Web Development", exp_value: 100)
exp6 = ExpScore.create(job: job6, industry: "Business", exp_value: 165)
exp7 = ExpScore.create(job: job7, industry: "Data Analysis", exp_value: 112)
exp8 = ExpScore.create(job: job8, industry: "Web Development", exp_value: 125)
exp9 = ExpScore.create(job: job9, industry: "Design", exp_value: 180)
exp10 = ExpScore.create(job: job10, industry: "Design", exp_value: 200)
exp11 = ExpScore.create(job: job11, industry: "Business Ops", exp_value: 95)
exp12 = ExpScore.create(job: job12, industry: "Data Analysis", exp_value: 102)
exp13 = ExpScore.create(job: job13, industry: "Marketing", exp_value: 120)
exp14 = ExpScore.create(job: job14, industry: "Development", exp_value: 220)
exp15 = ExpScore.create(job: job15, industry: "Marketing", exp_value: 145)
exp16 = ExpScore.create(job: job16, industry: "Bussiness Ops", exp_value: 100)


p 'Completed!!'
