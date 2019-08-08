# Create users
User.destroy_all
user1 = User.create(name: 'Mayra Navarro', email: 'mayra@codeable.co', password: '123456')
user2 = User.create(name: 'Ricardo Yrupailla', email: 'ricardo@codeable.com', password: '123456')
user3 = User.create(name: 'Carlos Sandoval', email: 'carlos@codeable.com', password: '123456')
User.create(name: 'Deyvi Conde', email: 'deyvi@codeable.co', password: '123456')
User.create(name: 'Cristian Estrada', email: 'cristian@codeable.co', password: '123456')
User.create(name: 'Frank Condezo', email: 'frank@codeable.co', password: '123456')
User.create(name: 'Christopher Roa', email: 'christopher@codeable.co', password: '123456')
User.create(name: 'Valeria Vassallo', email: 'valeria@codeable.co', password: '123456')
User.create(name: 'Diego Cuevas', email: 'diegoc@codeable.co', password: '123456')
User.create(name: 'Marieth Perez', email: 'marieth@codeable.co', password: '123456')

User.create(name: 'Angie Gonzales', email: 'angie@codeable.co', password: '123456')
User.create(name: 'Christopher Roa', email: 'christopher@codeable.co', password: '123456')
User.create(name: 'Paulo Tijero', email: 'paulo@codeable.co', password: '123456')
User.create(name: 'Paul Portillo', email: 'paul@codeable.co', password: '123456')
User.create(name: 'Liam Nivi', email: 'liam@codeable.co', password: '123456')
User.create(name: 'Diego Torres', email: 'diegot@codeable.co', password: '123456')
User.create(name: 'Brayan Ciudad', email: 'deyvi@codeable.co', password: '123456')
User.create(name: 'Jonathan Mendoza', email: 'jonathan@codeable.co', password: '123456')
User.create(name: 'Cesar Cachay', email: 'cesar@codeable.co', password: '123456')


# Modules
Modulo.destroy_all
modulo1 = Modulo.create(name: 'Ruby Fundamentals', description: 'Ruby Fundamentals is an inmersive module for beginners')
modulo2 = Modulo.create(name: 'Ruby on Rails', description: 'The most used framework for Ruby developers. We will learn how to create an entire backend project from scratch')
modulo3 = Modulo.create(name: 'JavaScript', description: 'React is one of the most demanded libraries to build interfaces. We will learn how to create an entire frontend project from scratch')
modulo4 = Modulo.create(name: 'React', description: 'At the end of the module all Codeable students will create a full project using Frontend & Backend concepts in just 4 weeks.')

# Lessons
Lesson.destroy_all
lesson11 = Lesson.create(title: 'Install Fest, CLI & Basic Programming', modulo: modulo1)
lesson12 = Lesson.create(title: 'Git, Methods & Classes', modulo: modulo1)
lesson13 = Lesson.create(title: 'Lesson 3 Module 1', modulo: modulo1)
lesson14 = Lesson.create(title: 'Lesson 4 Module 1', modulo: modulo1)

lesson21 = Lesson.create(title: 'Database Overview', modulo: modulo2)
lesson22 = Lesson.create(title: 'SQL Data Modeling', modulo: modulo2)
lesson23 = Lesson.create(title: 'SQL’s Data Manipulation Language', modulo: modulo2)
lesson24 = Lesson.create(title: 'Retrieving data: Queries, Sorting & Paginating', modulo: modulo2)
lesson25 = Lesson.create(title: 'Rails 101', modulo: modulo2)
lesson26 = Lesson.create(title: 'Rails Models: Validations & Migrations', modulo: modulo2)
lesson27 = Lesson.create(title: 'API, Rest & MVC', modulo: modulo2)

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

# Sublessons Module 1
sublesson111 = Sublesson.destroy_all
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

miniassigment15 = Sublesson.create(
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

miniassigment3 = Sublesson.create(
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

# Sublessons Module 2

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

miniassigment4 = Sublesson.create(
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
  title: 'Intro SQL',
  content: '<h3>Topic</h3>
  <p>Intro to Postgres</p> 
  <p>What is PostgreSQL? </p>
  <p>How to create a database?</p>',
  tag: tag1,
  lesson: lesson22,
  section: 'main'
)


sublesson222 = Sublesson.create(
  title: 'Create your DB in PostgreSQL',
  content: '<div class="application-main " data-commit-hovercards-enabled="">
  <div class="">
  <div class="container-lg clearfix new-discussion-timeline experiment-repo-nav  p-responsive">
  <div class="repository-content ">
  <div class="Box mt-3 position-relative">
  <div id="readme" class="Box-body readme blob instapaper_body js-code-block-container">
  <article class="markdown-body entry-content p-3 p-md-6">
  <div class="highlight highlight-source-shell">
  <pre>$ brew services start postgresql
  $ createdb <span class="pl-s"><span class="pl-pds">`</span>whoami<span class="pl-pds">`</span></span>
  $ createuser postgres -P -s
  $ psql</pre>
  </div>
  <ul>
  <li>How to create a table?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre>  <span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span>,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span>
    );</pre>
  </div>
  <ul>
  <li>How to delete a table?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">DROP</span> <span class="pl-k">TABLE</span> products</pre>
  </div>
  <ul>
  <li>How do you define a default value in a column?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre>price <span class="pl-k">numeric</span> DEFAULT <span class="pl-c1">0</span>.<span class="pl-c1">00</span></pre>
  </div>
  <ul>
  <li>What are the constraints?</li>
  <li>What types of constraints do you know? Give some examples</li>
  <li>What is a CHECK constraint? Why would you use it?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span>,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span> <span class="pl-k">CHECK</span> (price <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>)
  );</pre>
  </div>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span>,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span> <span class="pl-k">CONSTRAINT</span> positive_price <span class="pl-k">CHECK</span> (price<span class="pl-k">&gt;</span> <span class="pl-c1">0</span>)
  );</pre>
  </div>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span>,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span> <span class="pl-k">CHECK</span> (price <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>),
      discounted_price <span class="pl-k">numeric</span> <span class="pl-k">CHECK</span> (discounted_price <span class="pl-k">&gt;</span> <span class="pl-c1">0</span>),
      <span class="pl-k">CHECK</span> (price <span class="pl-k">&gt;</span> discounted_price)
  );</pre>
  </div>
  <ul>
  <li>What is a Not Null constraint? Why would you use it?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span> <span class="pl-k">NOT NULL</span>,
      name <span class="pl-k">text</span> <span class="pl-k">NOT NULL</span>,
      price <span class="pl-k">numeric</span>
  );</pre>
  </div>
  <ul>
  <li>What is a Unique constraint? Why would you use it?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span> UNIQUE,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span>
  );</pre>
  </div>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">example</span> (
      a <span class="pl-k">integer</span>,
      b <span class="pl-k">integer</span>,
      c <span class="pl-k">integer</span>,
      UNIQUE (a, c)
  );</pre>
  </div>
  <ul>
  <li>What is a primary key? Why would you use it?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span> <span class="pl-k">PRIMARY KEY</span>,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span>
  );</pre>
  </div>
  <ul>
  <li>What is a foreign key? Why would you use it?</li>
  </ul>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">orders</span> (
      order_id <span class="pl-k">integer</span> <span class="pl-k">PRIMARY KEY</span>,
      product_no <span class="pl-k">integer</span> <span class="pl-k">REFERENCES</span> products (product_no),
      quantity <span class="pl-k">integer</span>
  );</pre>
  </div>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">products</span> (
      product_no <span class="pl-k">integer</span> <span class="pl-k">PRIMARY KEY</span>,
      name <span class="pl-k">text</span>,
      price <span class="pl-k">numeric</span>
  );</pre>
  </div>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">orders</span> (
      order_id <span class="pl-k">integer</span> <span class="pl-k">PRIMARY KEY</span>,
      shipping_address <span class="pl-k">text</span>,
      ...
  );</pre>
  </div>
  <div class="highlight highlight-source-sql">
  <pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">order_items</span> (
      product_no <span class="pl-k">integer</span> <span class="pl-k">REFERENCES</span> products <span class="pl-k">ON DELETE</span> RESTRICT,
      order_id <span class="pl-k">integer</span> <span class="pl-k">REFERENCES</span> orders <span class="pl-k">ON DELETE CASCADE</span>,
      quantity <span class="pl-k">integer</span>,
      <span class="pl-k">PRIMARY KEY</span> (product_no, order_id)
  );</pre>
  </div>
  </article>
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>',
  tag: tag2,
  lesson: lesson22,
  section: 'main'
)

miniassigment4 = Sublesson.create(
  title: 'SQL’s Data Modeling Language',
  content: "<p>Create the database of the previous day's exercises.</p>
  <p>Use&nbsp;<a href='https://github.com/stympy/faker'>Faker</a>&nbsp;to populate the database with data.</p>",
  tag: tag3,
  lesson: lesson22,
  section: 'main'
)

sublesson224 = Sublesson.create(
  title: 'SQL’s Data Modeling Language Exercises',
  content: 'Create Instagram database',
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

miniassigment5 = Sublesson.create(
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

miniassigment6 = Sublesson.create(
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

# Sublessons Module 3

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

miniassigment7 = Sublesson.create(
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

miniassigment8 = Sublesson.create(
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

miniassigment9 = Sublesson.create(
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

miniassigment10 = Sublesson.create(
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

# Sublessons Module 4

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

miniassigment11 = Sublesson.create(
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

miniassigment12 = Sublesson.create(
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

miniassigment13 = Sublesson.create(
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

miniassigment14 = Sublesson.create(
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

# Solutions from user1

Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment1.id, score: 4)
Solution.create(content:'http://massign2.com/user1', status: "sent", user_id: user1.id, sublesson_id: miniassigment2.id, score: 3)
Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment3.id, score: 4)
Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment4.id, score: 2.3)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment5.id, score: 2.3)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment6.id, score: 2.3)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment7.id, score: 2.3)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment8.id, score: 2.3)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment9.id, score: 2.3)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment10.id, score: 2.7)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment11.id, score: 3.6)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment12.id, score: 3.1)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment13.id, score: 1.8)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment14.id, score: 3.1)
# Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: miniassigment15.id, score: 3.1)

# Solutions from user2
Solution.create(content:'http://massign1.com/user2', status: "saved", user_id: user2.id, sublesson_id: miniassigment1.id, score: 2)



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
ModuloGrade.create(week: 1, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo3)
ModuloGrade.create(week: 2, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo3)
ModuloGrade.create(week: 3, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo3)
ModuloGrade.create(week: 4, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo3)
ModuloGrade.create(feedback: 'Necesitas mucha ayuda de todos', tipo: 'GATE', code_review: 3, performance: 4, testing: 3, dry_code: 4, user: user1, modulo: modulo3)
ModuloGrade.create(week: 1, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo4)
ModuloGrade.create(week: 2, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo4)
ModuloGrade.create(week: 3, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo4)
ModuloGrade.create(week: 4, tipo: 'EP', code_review: 2.2, performance: 3, testing: 2.8, dry_code: 4, user: user1, modulo: modulo4)
ModuloGrade.create(feedback: 'Necesitas mucha ayuda de todos', tipo: 'GATE', code_review: 3, performance: 4, testing: 3, dry_code: 4, user: user1, modulo: modulo4)



