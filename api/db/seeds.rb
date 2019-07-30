# Create users
User.destroy_all
user1 = User.create(name: 'Ricardo Yrupailla', email: 'ry.yrupailla@gmail.com', password: '123456')
user2 = User.create(name: 'Mayra Navarro', email: 'mnavarro@able.co', password: '123456')
user3 = User.create(name: 'Mayra Navarro', email: 'luciagirasoles+1@gmail.com', password: '123456')
user4 = User.create(name: 'carlos Sandoval', email: 'csandoval@able.co', password: '123456')

# Modules
Modulo.destroy_all
Modulo.create(name: 'Ruby Fundamentals', description: 'Ruby Fundamentals is an inmersive module for beginners')
Modulo.create(name: 'Ruby on Rails', description: 'The most used framework for Ruby developers. We will learn how to create an entire backend project from scratch')
Modulo.create(name: 'React', description: 'React is one of the most demanded libraries to build interfaces. We will learn how to create an entire frontend project from scratch')
Modulo.create(name: 'Final Project', description: 'At the end of the module all Codeable students will create a full project using Frontend & Backend concepts in just 4 weeks.')

# Lessons
Lesson.destroy_all
Lesson.create(title: 'Install Fest, CLI & Basic Programming', modulo_id: 1)
Lesson.create(title: 'Git, Methods & Classes', modulo_id: 1)

Lesson.create(title: 'Database Overview', modulo_id: 2)
Lesson.create(title: 'SQL Data Modeling', modulo_id: 2)

Lesson.create(title: 'HTML & CSS', modulo_id: 3)
Lesson.create(title: 'Flexbox, Grid & Layouts', modulo_id: 3)

Lesson.create(title: 'Planning Day', modulo_id: 4)
Lesson.create(title: 'Brainstorming', modulo_id: 4)

# Tag
Tag.destroy_all
Tag.create(name: 'OVERVIEW', color: 'mediumseagreen')
Tag.create(name: 'WORKSHOP', color: 'lightseagreen')
Tag.create(name: 'M-ASSIGN', color: 'goldenrod')
Tag.create(name: 'EXERCISES', color: 'mediumpurple')
Tag.create(name: 'BLOG', color: 'indianred')

# Sublesson
Sublesson.destroy_all
Sublesson.create(title: 'CLI Commands', content: '## Learn some basic commands like: ls, cd, mkdir, touch, rm -rf, mv, cat, history, grep, find, chmod', tag_id: 1, lesson_id: 1, section: 'main')
Sublesson.create(title: 'How to use commands with CLI', content: '## Play with your files using some commands', tag_id: 2, lesson_id: 1, section: 'main')
miniassigment1 = Sublesson.create(title: 'Create your first repository', content:
  '## Create your first repository on Github and apply some commands
   * Use your personal Github account
   * Include at least one Ruby file
  ', tag_id: 3, lesson_id: 1, section: 'main')


Sublesson.create(title: 'Git', content: '## Adding a new SSH key to your GitHub account
  * Fork a Repo
  * Create a pull request, an issue and a Pull Request from a fork', tag_id: 1, lesson_id: 2, section: 'main')
miniassigment2 = Sublesson.create(title: 'Create a snake game using Ruby', content:
  '## Create your first game using Ruby syntax
   * Try to use classes and methods
   * Is mandatory to do pair programming
   * Use git branches
  ', tag_id: 3, lesson_id: 2, section: 'main')
Sublesson.create(title: 'Bob The Teenager', content: '## Bob is a lackadaisical teenager. In conversation, his responses are very limited. Bob answers Sure. if you ask him a question. He answers Whoa, chill out! if you yell at him. He answers Calm down, I know what I\'m doing! if you yell a question at him. He says Fine. Be that way! if you address him without actually saying anything. He answers Whatever. to anything else.
  Bob\'s conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.
  Write a program that chats with Bob. To every input, Bob will reply.', section: 'extra', lesson_id: 2, tag_id: 4)

#Create Solutions

Solution.create(content:'this url solution 1', status: "pending", user_id: user1.id, sublesson_id: miniassigment1.id)
