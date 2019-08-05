# Create users
User.destroy_all
user1 = User.create(name: 'Ricardo Yrupailla', email: 'ry.yrupailla@gmail.com', password: '123456')
user2 = User.create(name: 'Mayra Navarro', email: 'mnavarro@able.co', password: '123456')
user3 = User.create(name: 'Lucia Navarro', email: 'luciagirasoles+1@gmail.com', password: '123456')
user4 = User.create(name: 'Carlos Sandoval', email: 'csandoval@able.co', password: '123456')

# Modules
Modulo.destroy_all
modulo1 = Modulo.create(name: 'Ruby Fundamentals', description: 'Ruby Fundamentals is an inmersive module for beginners')
modulo2 = Modulo.create(name: 'Ruby on Rails', description: 'The most used framework for Ruby developers. We will learn how to create an entire backend project from scratch')
modulo3 = Modulo.create(name: 'React', description: 'React is one of the most demanded libraries to build interfaces. We will learn how to create an entire frontend project from scratch')
modulo4 = Modulo.create(name: 'Final Project', description: 'At the end of the module all Codeable students will create a full project using Frontend & Backend concepts in just 4 weeks.')

# Lessons
Lesson.destroy_all
lesson11 = Lesson.create(title: 'Install Fest, CLI & Basic Programming', modulo: modulo1)
lesson12 = Lesson.create(title: 'Git, Methods & Classes', modulo: modulo1)
lesson13 = Lesson.create(title: 'Lesson 3 Module 1', modulo: modulo1)
lesson14 = Lesson.create(title: 'Lesson 4 Module 1', modulo: modulo1)

lesson21 = Lesson.create(title: 'Database Overview', modulo: modulo2)
lesson22 = Lesson.create(title: 'SQL Data Modeling', modulo: modulo2)
lesson23 = Lesson.create(title: 'Lesson 3 Module 2', modulo: modulo2)
lesson24 = Lesson.create(title: 'Lesson 4 Module 2', modulo: modulo2)

lesson31 = Lesson.create(title: 'HTML & CSS', modulo: modulo3)
lesson32 = Lesson.create(title: 'Flexbox, Grid & Layouts', modulo: modulo3)
lesson33 = Lesson.create(title: 'Lesson 3 Module 3', modulo: modulo3)
lesson34 = Lesson.create(title: 'Lesson 4 Module 3', modulo: modulo3)

lesson41 = Lesson.create(title: 'Planning Day', modulo: modulo4)
lesson42 = Lesson.create(title: 'Brainstorming', modulo: modulo4)
lesson43 = Lesson.create(title: 'Lesson 3 Module 4', modulo: modulo4)
lesson44 = Lesson.create(title: 'Lesson 4 Module 4', modulo: modulo4)

# Tag
Tag.destroy_all
tag1 = Tag.create(name: 'OVERVIEW', color: 'mediumseagreen')
tag2 = Tag.create(name: 'WORKSHOP', color: 'lightseagreen')
tag3 = Tag.create(name: 'M-ASSIGN', color: 'goldenrod')
tag4 = Tag.create(name: 'EXERCISES', color: 'mediumpurple')
tag5 = Tag.create(name: 'BLOG', color: 'indianred')

# Sublesson
sublesson1111 = Sublesson.destroy_all
Sublesson.create(
  title: 'CLI Commands',
  content: '# Learn some basic commands like: ls, cd, mkdir, touch, rm -rf, mv, cat, history, grep, find, chmod',
  tag: tag1,
  lesson: lesson11,
  section: 'main'
)
sublesson112 = Sublesson.create(
  title: 'How to use commands with CLI',
  content: '# Play with your files using some commands',
  tag: tag2,
  lesson: lesson11,
  section: 'main'
)

miniassigment1 = Sublesson.create(
  title: 'Create your first repository',
  content:
  '## Create your first repository on Github and apply some commands
   * Use your personal Github account
   * Include at least one Ruby file
  ',
  tag: tag3,
  lesson: lesson11,
  section: 'main'
)

sublesson114 = Sublesson.create(
  title: 'Sublesson 4 Lesson 1 Tag 4',
  content: '# Content Sublesson 4 Lesson 1 Tag 4',
  tag: tag4,
  lesson: lesson11,
  section: 'main'
)

Sublesson.create(
  title: 'Check extra exercises',
  content: '## Make your first pull request and code review',
  section: 'extra',
  lesson: lesson11,
  tag: tag4
)

Sublesson.create(
  title: 'Read additional material about CLI',
  content: '## How to be a rockstart within CLI',
  section: 'extra',
  lesson: lesson11,
  tag: tag5
)

sublesson121 = Sublesson.create(
  title: 'Sublesson 1 Lesson 1 Tag 1',
  content: '# Content Sublesson 1 Lesson 1 Tag 1',
  tag: tag1,
  lesson: lesson12,
  section: 'main'
)

sublesson122 = Sublesson.create(
  title: 'Sublesson 2 Lesson 1 Tag 2',
  content: '# Content Sublesson 2 Lesson 1 Tag 2',
  tag: tag2,
  lesson: lesson12,
  section: 'main'
)


miniassigment2 = Sublesson.create(
  title: 'Create a snake game using Ruby',
  content:
  '## Create your first game using Ruby syntax
   * Try to use classes and methods
   * Is mandatory to do pair programming
   * Use git branches
  ',
  tag: tag3,
  lesson: lesson12,
  section: 'main'
)

sublesson124 = Sublesson.create(
  title: 'Sublesson 4 Lesson 1 Tag 4',
  content: '# Content Sublesson 4 Lesson 1 Tag 4',
  tag: tag4,
  lesson: lesson12,
  section: 'main'
)

sublesson131 = Sublesson.create(
  title: 'Sublesson 1 Lesson 3 Tag 1',
  content: '# Content Sublesson 1 Lesson 3 Tag 1',
  tag: tag1,
  lesson: lesson13,
  section: 'main'
)
sublesson132 = Sublesson.create(
  title: 'Sublesson 2 Lesson 3 Tag 2',
  content: '# Content Sublesson 2 Lesson 3 Tag 2',
  tag: tag2,
  lesson: lesson13,
  section: 'main'
)

sublesson133 = Sublesson.create(
  title: 'Sublesson 3 Lesson 3 Tag 3',
  content: '# Content Sublesson 3 Lesson 3 Tag 3',
  tag: tag3,
  lesson: lesson13,
  section: 'main'
)

sublesson141 = Sublesson.create(
  title: 'Sublesson 1 Lesson 4 Tag 1',
  content: '# Content Sublesson 1 Lesson 4 Tag 1',
  tag: tag1,
  lesson: lesson14,
  section: 'main'
)

sublesson142 = Sublesson.create(
  title: 'Sublesson 2 Lesson 4 Tag 2',
  content: '# Content Sublesson 2 Lesson 4 Tag 2',
  tag: tag2,
  lesson: lesson14,
  section: 'main'
)

sublesson143 = Sublesson.create(
  title: 'Sublesson 3 Lesson 4 Tag 3',
  content: '# Content Sublesson 3 Lesson 4 Tag 3',
  tag: tag3,
  lesson: lesson14,
  section: 'main'
)

sublesson144 = Sublesson.create(
  title: 'Sublesson 4 Lesson 4 Tag 4',
  content: '# Content Sublesson 4 Lesson 4 Tag 4',
  tag: tag4,
  lesson: lesson14,
  section: 'main'
)

sublesson211 = Sublesson.create(
  title: 'Sublesson 1 Lesson 1 Tag 1',
  content: 'Content Sublesson 1 Lesson 1 Tag 1',
  tag: tag1,
  lesson: lesson21,
  section: 'main'
)
sublesson212 = Sublesson.create(
  title: 'Sublesson 2 Lesson 1 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 1 Tag 2 section main',
  tag: tag2,
  lesson: lesson21,
  section: 'main'
)

sublesson213 = Sublesson.create(
  title: 'Sublesson 3 Lesson 1 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 1 Tag 3 section main',
  tag: tag3,
  lesson: lesson21,
  section: 'main'
)

sublesson214 = Sublesson.create(
  title: 'Sublesson 4 Lesson 1 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 1 Tag 4 section main',
  tag: tag4,
  lesson: lesson21,
  section: 'main'
)

sublesson221 = Sublesson.create(
  title: 'Sublesson 1 Lesson 2 Tag 1',
  content: 'Content Sublesson 1 Lesson 2 Tag 1',
  tag: tag1,
  lesson: lesson22,
  section: 'main'
)


sublesson222 = Sublesson.create(
  title: 'Sublesson 2 Lesson 2 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 2 Tag 2 section main',
  tag: tag2,
  lesson: lesson22,
  section: 'main'
)

sublesson223 = Sublesson.create(
  title: 'Sublesson 3 Lesson 2 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 2 Tag 3 section main',
  tag: tag3,
  lesson: lesson22,
  section: 'main'
)

sublesson224 = Sublesson.create(
  title: 'Sublesson 4 Lesson 2 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 2 Tag 4 section main',
  tag: tag4,
  lesson: lesson22,
  section: 'main'
)

sublesson231 = Sublesson.create(
  title: 'Sublesson 1 Lesson 2 Tag 1',
  content: 'Content Sublesson 1 Lesson 2 Tag 1',
  tag: tag1,
  lesson: lesson23,
  section: 'main'
)


sublesson232 = Sublesson.create(
  title: 'Sublesson 2 Lesson 2 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 2 Tag 2 section main',
  tag: tag2,
  lesson: lesson23,
  section: 'main'
)

sublesson233 = Sublesson.create(
  title: 'Sublesson 3 Lesson 2 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 2 Tag 3 section main',
  tag: tag3,
  lesson: lesson23,
  section: 'main'
)

sublesson234 = Sublesson.create(
  title: 'Sublesson 4 Lesson 2 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 2 Tag 4 section main',
  tag: tag4,
  lesson: lesson23,
  section: 'main'
)

sublesson241 = Sublesson.create(
  title: 'Sublesson 1 Lesson 2 Tag 1',
  content: 'Content Sublesson 1 Lesson 2 Tag 1',
  tag: tag1,
  lesson: lesson24,
  section: 'main'
)


sublesson242 = Sublesson.create(
  title: 'Sublesson 2 Lesson 2 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 2 Tag 2 section main',
  tag: tag2,
  lesson: lesson24,
  section: 'main'
)

sublesson243 = Sublesson.create(
  title: 'Sublesson 3 Lesson 2 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 2 Tag 3 section main',
  tag: tag3,
  lesson: lesson24,
  section: 'main'
)

sublesson244 = Sublesson.create(
  title: 'Sublesson 4 Lesson 2 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 2 Tag 4 section main',
  tag: tag4,
  lesson: lesson24,
  section: 'main'
)

sublesson311 = Sublesson.create(
  title: 'Sublesson 1 Lesson 1 Tag 1',
  content: 'Content Sublesson 1 Lesson 1 Tag 1',
  tag: tag1,
  lesson: lesson31,
  section: 'main'
)


sublesson312 = Sublesson.create(
  title: 'Sublesson 2 Lesson 1 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 1 Tag 2 section main',
  tag: tag2,
  lesson: lesson31,
  section: 'main'
)

sublesson313 = Sublesson.create(
  title: 'Sublesson 3 Lesson 1 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 1 Tag 3 section main',
  tag: tag3,
  lesson: lesson31,
  section: 'main'
)

sublesson314 = Sublesson.create(
  title: 'Sublesson 4 Lesson 1 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 1 Tag 4 section main',
  tag: tag4,
  lesson: lesson31,
  section: 'main'
)

sublesson321 = Sublesson.create(
  title: 'Sublesson 1 Lesson 2 Tag 1',
  content: 'Content Sublesson 1 Lesson 2 Tag 1',
  tag: tag1,
  lesson: lesson32,
  section: 'main'
)


sublesson322 = Sublesson.create(
  title: 'Sublesson 2 Lesson 2 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 2 Tag 2 section main',
  tag: tag2,
  lesson: lesson32,
  section: 'main'
)

sublesson323 = Sublesson.create(
  title: 'Sublesson 3 Lesson 2 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 2 Tag 3 section main',
  tag: tag3,
  lesson: lesson32,
  section: 'main'
)

sublesson324 = Sublesson.create(
  title: 'Sublesson 4 Lesson 2 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 2 Tag 4 section main',
  tag: tag4,
  lesson: lesson32,
  section: 'main'
)

sublesson331 = Sublesson.create(
  title: 'Sublesson 1 Lesson 3 Tag 1',
  content: 'Content Sublesson 1 Lesson 3 Tag 1',
  tag: tag1,
  lesson: lesson33,
  section: 'main'
)


sublesson332 = Sublesson.create(
  title: 'Sublesson 2 Lesson 3 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 3 Tag 2 section main',
  tag: tag2,
  lesson: lesson33,
  section: 'main'
)

sublesson333 = Sublesson.create(
  title: 'Sublesson 3 Lesson 3 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 3 Tag 3 section main',
  tag: tag3,
  lesson: lesson33,
  section: 'main'
)

sublesson334 = Sublesson.create(
  title: 'Sublesson 4 Lesson 3 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 3 Tag 4 section main',
  tag: tag4,
  lesson: lesson33,
  section: 'main'
)

sublesson341 = Sublesson.create(
  title: 'Sublesson 1 Lesson 3 Tag 1',
  content: 'Content Sublesson 1 Lesson 3 Tag 1',
  tag: tag1,
  lesson: lesson34,
  section: 'main'
)


sublesson342 = Sublesson.create(
  title: 'Sublesson 2 Lesson 3 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 3 Tag 2 section main',
  tag: tag2,
  lesson: lesson34,
  section: 'main'
)

sublesson343 = Sublesson.create(
  title: 'Sublesson 3 Lesson 3 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 3 Tag 3 section main',
  tag: tag3,
  lesson: lesson34,
  section: 'main'
)

sublesson344 = Sublesson.create(
  title: 'Sublesson 4 Lesson 3 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 3 Tag 4 section main',
  tag: tag4,
  lesson: lesson34,
  section: 'main'
)

sublesson411 = Sublesson.create(
  title: 'Sublesson 1 Lesson 1 Tag 1',
  content: 'Content Sublesson 1 Lesson 1 Tag 1',
  tag: tag1,
  lesson: lesson41,
  section: 'main'
)


sublesson412 = Sublesson.create(
  title: 'Sublesson 2 Lesson 1 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 1 Tag 2 section main',
  tag: tag2,
  lesson: lesson41,
  section: 'main'
)

sublesson413 = Sublesson.create(
  title: 'Sublesson 3 Lesson 1 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 1 Tag 3 section main',
  tag: tag3,
  lesson: lesson41,
  section: 'main'
)

sublesson414 = Sublesson.create(
  title: 'Sublesson 4 Lesson 1 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 1 Tag 4 section main',
  tag: tag4,
  lesson: lesson41,
  section: 'main'
)

sublesson421 = Sublesson.create(
  title: 'Sublesson 1 Lesson 2 Tag 1',
  content: 'Content Sublesson 1 Lesson 2 Tag 1',
  tag: tag1,
  lesson: lesson42,
  section: 'main'
)


sublesson422 = Sublesson.create(
  title: 'Sublesson 2 Lesson 2 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 2 Tag 2 section main',
  tag: tag2,
  lesson: lesson42,
  section: 'main'
)

sublesson423 = Sublesson.create(
  title: 'Sublesson 3 Lesson 2 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 2 Tag 3 section main',
  tag: tag3,
  lesson: lesson42,
  section: 'main'
)

sublesson424 = Sublesson.create(
  title: 'Sublesson 4 Lesson 2 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 2 Tag 4 section main',
  tag: tag4,
  lesson: lesson42,
  section: 'main'
)

sublesson431 = Sublesson.create(
  title: 'Sublesson 1 Lesson 3 Tag 1',
  content: 'Content Sublesson 1 Lesson 3 Tag 1',
  tag: tag1,
  lesson: lesson43,
  section: 'main'
)


sublesson432 = Sublesson.create(
  title: 'Sublesson 2 Lesson 3 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 3 Tag 2 section main',
  tag: tag2,
  lesson: lesson43,
  section: 'main'
)

sublesson433 = Sublesson.create(
  title: 'Sublesson 3 Lesson 3 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 3 Tag 3 section main',
  tag: tag3,
  lesson: lesson43,
  section: 'main'
)

sublesson434 = Sublesson.create(
  title: 'Sublesson 4 Lesson 3 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 3 Tag 4 section main',
  tag: tag4,
  lesson: lesson43,
  section: 'main'
)

sublesson441 = Sublesson.create(
  title: 'Sublesson 1 Lesson 3 Tag 1',
  content: 'Content Sublesson 1 Lesson 3 Tag 1',
  tag: tag1,
  lesson: lesson44,
  section: 'main'
)


sublesson442 = Sublesson.create(
  title: 'Sublesson 2 Lesson 3 Tag 2 section main',
  content: 'Content Sublesson 2 Lesson 3 Tag 2 section main',
  tag: tag2,
  lesson: lesson44,
  section: 'main'
)

sublesson443 = Sublesson.create(
  title: 'Sublesson 3 Lesson 3 Tag 3 section main',
  content: 'Content Sublesson 3 Lesson 3 Tag 3 section main',
  tag: tag3,
  lesson: lesson44,
  section: 'main'
)

sublesson444 = Sublesson.create(
  title: 'Sublesson 4 Lesson 3 Tag 4 section main',
  content: 'Content Sublesson 4 Lesson 3 Tag 4 section main',
  tag: tag4,
  lesson: lesson44,
  section: 'main'
)




Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment1.id)
Solution.create(content:'http://massign2.com/user1', status: "sent", user_id: user1.id, sublesson_id: miniassigment2.id)
Solution.create(content:'http://massign1.com/user2', status: "saved", user_id: user2.id, sublesson_id: miniassigment1.id)
ModuloGrade.all
ModuloGrade.create(week: 1, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo1)
ModuloGrade.create(week: 2, tipo: 'EP', code_review: 2.3, performance: 2.5, testing: 2.7, dry_code: 3.5, user: user1, modulo: modulo1)
ModuloGrade.create(week: 3, tipo: 'EP', code_review: 2.4, performance: 1.3, testing: 2.6, dry_code: 2.8, user: user1, modulo: modulo1)
ModuloGrade.create(week: 4, tipo: 'EP', code_review: 2.5, performance: 2.5, testing: 2.5, dry_code: 3.1, user: user1, modulo: modulo1)
ModuloGrade.create(week: 1, tipo: 'EP', code_review: 2.6, performance: 4, testing: 2.8, dry_code: 0.5, user: user1, modulo: modulo2)
ModuloGrade.create(week: 2, tipo: 'EP', code_review: 2.7, performance: 3, testing: 2.4, dry_code: 1, user: user1, modulo: modulo2)
ModuloGrade.create(week: 3, tipo: 'EP', code_review: 2.8, performance: 2, testing: 2.3, dry_code: 2, user: user1, modulo: modulo2)
ModuloGrade.create(week: 4, tipo: 'EP', code_review: 2.9, performance: 1.6, testing: 2.1, dry_code: 3, user: user1, modulo: modulo2)
ModuloGrade.create(feedback: 'Lo hiciste muy bien', tipo: 'GATE', code_review: 3, performance: 4, testing: 3, dry_code: 4, user: user1, modulo: modulo1)
ModuloGrade.create(feedback: 'Tienes que repasar mucho', tipo: 'GATE', code_review: 2.2, performance: 1.6, testing: 2, dry_code: 2, user: user1, modulo: modulo2)
