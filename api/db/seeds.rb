# Create users
User.destroy_all
user1 = User.create(name: 'Ricardo Yrupailla', email: 'ry.yrupailla@gmail.com', password: '123456')
user2 = User.create(name: 'Mayra Navarro', email: 'mnavarro@able.co', password: '123456')
user3 = User.create(name: 'Mayra Navarro', email: 'luciagirasoles+1@gmail.com', password: '123456')
user4 = User.create(name: 'carlos Sandoval', email: 'csandoval@able.co', password: '123456')

# Modules
Modulo.destroy_all
modulo1 = Modulo.create(name: 'Ruby Fundamentals', description: 'Ruby Fundamentals is an inmersive module for beginners')
modulo2 = Modulo.create(name: 'Ruby on Rails', description: 'The most used framework for Ruby developers. We will learn how to create an entire backend project from scratch')
modulo3 = Modulo.create(name: 'React', description: 'React is one of the most demanded libraries to build interfaces. We will learn how to create an entire frontend project from scratch')
modulo4 = Modulo.create(name: 'Final Project', description: 'At the end of the module all Codeable students will create a full project using Frontend & Backend concepts in just 4 weeks.')

# Lessons
Lesson.destroy_all
lesson1 = Lesson.create(title: 'Install Fest, CLI & Basic Programming', modulo: modulo1)
lesson2 = Lesson.create(title: 'Git, Methods & Classes', modulo: modulo1)

Lesson.create(title: 'Database Overview', modulo: modulo2)
Lesson.create(title: 'SQL Data Modeling', modulo: modulo2)

Lesson.create(title: 'HTML & CSS', modulo: modulo3)
Lesson.create(title: 'Flexbox, Grid & Layouts', modulo: modulo3)

Lesson.create(title: 'Planning Day', modulo: modulo4)
Lesson.create(title: 'Brainstorming', modulo: modulo4)

# Tag
Tag.destroy_all
tag1 = Tag.create(name: 'OVERVIEW', color: 'mediumseagreen')
tag2 = Tag.create(name: 'WORKSHOP', color: 'lightseagreen')
tag3 = Tag.create(name: 'M-ASSIGN', color: 'goldenrod')
tag4 = Tag.create(name: 'EXERCISES', color: 'mediumpurple')
tag5 = Tag.create(name: 'BLOG', color: 'indianred')

# Sublesson
Sublesson.destroy_all
Sublesson.create(
  title: 'CLI Commands',
  content: '## Learn some basic commands like: ls, cd, mkdir, touch, rm -rf, mv, cat, history, grep, find, chmod',
  tag: tag1,
  lesson: lesson1,
  section: 'main'
)
Sublesson.create(
  title: 'How to use commands with CLI',
  content: '## Play with your files using some commands',
  tag: tag2,
  lesson: lesson1,
  section: 'main'
)
Sublesson.create(
  title: 'Create your first repository',
  content:
  '## Create your first repository on Github and apply some commands
   * Use your personal Github account
   * Include at least one Ruby file
  ',
  tag: tag3,
  lesson: lesson1,
  section: 'main'
)
Sublesson.create(
  title: 'Create a snake game using Ruby',
  content:
  '## Create your first game using Ruby syntax
   * Try to use classes and methods
   * Is mandatory to do pair programming
   * Use git branches
  ',
  tag: tag3,
  lesson: lesson2,
  section: 'main'
)
Sublesson.create(
  title: 'Check extra exercises',
  content: '## Make your first pull request and code review',
  section: 'extra',
  lesson: lesson1,
  tag: tag4
)
Sublesson.create(
  title: 'Read additional material about CLI',
  content: '## How to be a rockstart within CLI',
  section: 'extra',
  lesson: lesson1,
  tag: tag5
)

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
