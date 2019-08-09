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
modulo3 = Modulo.create(name: 'JavaScript', description: 'React is one of the most demanded libraries to build interfaces. We will learn how to create an entire frontend project from scratch')
modulo4 = Modulo.create(name: 'React', description: 'At the end of the module all Codeable students will create a full project using Frontend & Backend concepts in just 4 weeks.')

# Lessons
Lesson.destroy_all
lesson11 = Lesson.create(title: 'Install Fest, CLI & Basic Programming', modulo: modulo1)
lesson12 = Lesson.create(title: 'Git, Methods & Classes', modulo: modulo1)
lesson13 = Lesson.create(title: 'Arrays Iterators Loops', modulo: modulo1)
lesson14 = Lesson.create(title: 'Linux and Unix', modulo: modulo1)




lesson21 = Lesson.create(title: 'Database Overview', modulo: modulo2)
lesson22 = Lesson.create(title: 'SQL Data Modeling', modulo: modulo2)
lesson23 = Lesson.create(title: 'SQL Data Manipulation', modulo: modulo2)
lesson24 = Lesson.create(title: 'Retrieving Data', modulo: modulo2)




lesson31 = Lesson.create(title: 'HTML & CSS', modulo: modulo3)
lesson32 = Lesson.create(title: 'Flexbox, Grid & Layouts', modulo: modulo3)
lesson33 = Lesson.create(title: 'CSS Animations', modulo: modulo3)
lesson34 = Lesson.create(title: 'JS Fundamentals', modulo: modulo3)



lesson41 = Lesson.create(title: 'React State Effects', modulo: modulo4)
lesson42 = Lesson.create(title: 'List Forms', modulo: modulo4)
lesson43 = Lesson.create(title: 'CSS in JS', modulo: modulo4)
lesson44 = Lesson.create(title: 'React Design Patterns', modulo: modulo4)



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
  content: '# Learn some basic commands like: ls, cd, mkdir, touch, rm -rf, mv, cat, history, grep, find, chmod',
  tag: tag1,
  lesson: lesson11,
  section: 'main',
)

Sublesson.create(
  title: 'How to use commands with CLI',
  content: '# Play with your files using some commands',
  tag: tag2,
  lesson: lesson11,
  section: 'main',
)

massign1 = Sublesson.create(
  title: 'Create your first repository',
  content:
  '## Create your first repository on Github and apply some commands
   * Use your personal Github account
   * Include at least one Ruby file
  ',
  tag: tag3,
  lesson: lesson11,
  section: 'main',
)

Sublesson.create(
  title: 'Check extra exercises',
  content: '## Make your first pull request and code review',
  section: 'extra',
  lesson: lesson11,
  tag: tag4,
)

Sublesson.create(
  title: 'Read additional material about CLI',
  content: '## How to be a rockstart within CLI',
  section: 'extra',
  lesson: lesson11,
  tag: tag5,
)

Sublesson.create(
  title: 'Intro to Git',
  content: '<div>
  <h3>Questions</h3>
  <ul>
  <li>What is the Index, what is the staging area?</li>
  <li>What is HEAD? What are refs?</li>
  <li>What are remotes?</li>
  <li>How is ancestry tracked?</li>
  <li>Initialize a git repository</li>
  <li>Commit your changes</li>
  <li>Explore the history of the repository</li>
  <li>View the log message and the changes introduced by a particular commit or a commit range</li>
  <li>Rebase your changes</li>
  <li>What is the reflog?</li>
  <li>Exercise: Ancestry tracked</li>
  </ul>
  </div>
  ',
  tag: tag1,
  lesson: lesson12,
  section: 'main',
)

Sublesson.create(
  title: 'Git Configuration',
  content: '<h1 id="initial-configuration">Initial configuration</h1>
  <p>  To start using git, you will want to configure your name and email address. This is the identity that will appear in your commits.</p>
  <p>  git config --global user.name &#39;Nombre Apellido&#39;
    git config --global user.email johndoe@example.com</p>
  <h1 id="basic-concepts">Basic concepts</h1>
  <h2 id="the-three-states">The three states</h2>
  <p>  Files inside a git repository have three states: modified, staged and committed.</p>
  <p>  Working directory
    The working directory consists of the files you have modified since your last commit.</p>
  <p>  These changes can be either marked to be included in the next commit (staged) or discarded (checked out)</p>
  <p>  When you modify files in your project, the git status command will list them under the &#39;Changes not staged for commit&#39; section.</p>
  <p>  Index
    This is the staging area of your repository. It includes all the changes that will be saved to the repository in the next commit.</p>
  <p>  When you have modified files in your working directory, you can stage them via git add.</p>
  <p>  When you add files to the index, the git status command will list them under the &#39;Changes to be committed&#39; section.</p>
  <p>  After you run git commit, the changes will be moved from the index and persisted in the local repository.</p>
  <p>  HEAD
    This is the commit at the top of the current branch (i.e.: the latest one!). The files in the working directory and the staging area are compared against their versions in the HEAD to be committed.</p>
  <h2 id="remotes">Remotes</h2>
  <p>  Git remotes allow you to collaborate with other people. They are versions of the same repository hosted somewhere else, like GitHub.</p>
  <p>  When you clone a repository, origin is added to your list of remotes, but you can add other remotes and remove them as needed. You can view the URLs they point to by running git remote -v.</p>
  <p>  When you pull and push changes, you need to include the remote name to let git know which remote repository you are referring to:</p>
  <p>  git pull origin master</p>
  <p>  git push heroku master</p>
  <p>  Alternatively, you can add an upstream which is a specific branch and remote combo that will be used as the default remote of your current branch.</p>
  <h2 id="ancestry-tracking">Ancestry tracking</h2>
  <p>  Git commits can have one or many parents. When you are working in a branch and adding more commits, the parent commit will be the previous one created.</p>
  <p>  You can reference the parent commit with HEAD^1 or just omit the 1: HEAD^</p>
  <p>  When you have merge commits either by pulling or merging branches directly, commits will have two parents, running git show <hash> will output something like this:</p>
  <p>  commit 22fcc0b1ad82cffce8f38f1f3c97ec6e605676ab (HEAD -&gt; my-work, origin/master, origin/HEAD, master)
    Merge: 2f4291fb3 4c0e4ef62
    In this case, to reference the first parent (2f4291fb3) you use HEAD^1 and for the second parent commit (4c0e4ef62) you can use HEAD^2.</p>
  <p>  You can traverse the revision list of commits in reverse chronological order using ~.</p>
  <p>  In the following commits, if you start in 355209d, you can reference its parent 0bb76ce either with HEAD~1 or HEAD~1 as we saw before. To reference older commits like 165ac76 and aa16fed you need to use HEAD~2 and HEAD~3.</p>
  <p>  355209d Add information about ancestry tracking (HEAD)
    0bb76ce Add information about remotes (HEAD^1 or HEAD~1)
    165ac76 Add information about the three git states (HEAD~2)
    aa16fed Add basic outline (HEAD~3)</p>
  <h1 id="working-with-git">Working with Git</h1>
  <h2 id="creating-a-repository">Creating a repository</h2>
  <p>  You can either clone a git repo with the clone command:</p>
  <p>  git clone git@github.com:ableco/code-school.git</p>
  <p>  Or create one yourself in a directory by running git init and set a remote by running: git remote add origin git@github.com:ableco/code-school.git.</p>
  <h2 id="committing-changes">Committing changes</h2>
  <p>  The first step after modifying changes is to stage them.</p>
  <p>  You can stage individual files with git add <file>, or specific parts (chunks) of a file with git add -p <file>.</p>
  <p>  Or stage all of the files in the working directory with git add . But this is discouraged unless you know that all of the changes need to be included in the next commit.</p>
  <p>  After that, commit your changes with git commit -m &#39;A meaningful commit message&#39;.</p>
  <p>  If you forgot to include a change, you can stage it and replace the previous commit with --amend:</p>
  <p>  git add file-to-add.txt
    git commit --amend
    This will open the editor configured in your terminal and also let you edit the commit message to create a new commit.</p>
  <p>  Note this is a destructive operation, the hash of the commit will change even if you don&#39;t modify the commit message and you will need to force push your changes. You should never amend commits in a shared branch like master.</p>
  <h2 id="exploring-the-commit-history">Exploring the commit history</h2>
  <p>  To view the list of commits in the repository you use git log. It accepts many parameters and format options. You can explore them via git log --help, and we&#39;ll focus on a few options below.</p>
  <p>  To view a the list of a range of commits, we do this by specifying the hashes of the start and end of the ranges in chronological order separated by two periods, if we take our previous example:</p>
  <p>  355209d Add information about ancestry tracking (HEAD)
    0bb76ce Add information about remotes (HEAD^1 or HEAD~1)
    165ac76 Add information about the three git states (HEAD~2)
    aa16fed Add basic outline (HEAD~3)
    To view the log of the two commits in the middle, we would run git log 165ac76..0bb76ce</p>
  <p>  To show the specific changes introduced by a particular commits, we use git show <hash>, in this case, we&#39;ll explore the latest commit with git show 355209d.</p>
  <p>  The show command also accept ranges as explained above, so git log 165ac76..0bb76ce will give us the details of what files and changes were updated in the commits contained in that range.</p>
  <p>  You can filter commits made by a user with either their name or email with git log --author=&#39;myemail@able.co&#39;.</p>
  <p>  If you want to see only the commits of a specific branch, you can do this with git log <base-branch>..<branch-to-filter>.</p>
  <h2 id="working-with-branches">Working with branches</h2>
  <p>  Git branches are at the core of the git workflow. By default, the main branch of your repository is named master. They can have</p>
  <p>  Running git branch gives you a list of all the branches you have available.</p>
  <p>  You can create a new branch by running git checkout -b <name-of-branch>. Note that it will spawn from the branch you&#39;re currently on.</p>
  <p>  To move between branches, you run git checkout <branch>. You may be asked to either commit or stash changes when moving from one branch to another to prevent losing changes.</p>
  <p>  If you want to switch to the branch where you were previously, you can run git checkout -.</p>
  <p>  You can merge changes from one branch to another with merge. You need to be on the branch you want updated, and specify the branch you want to pull changes from.</p>
  <p>  For example, if you are in master and run git merge my-feature-branch, git will merge the commits from my-feature-branch into master.</p>
  <h2 id="rewriting-history-with-rebase">Rewriting history with rebase</h2>
  <p>  Rebase is one of git&#39;s most powerful tools. We&#39;ll start by talking about two of its most common uses: keeping branches up to date and rewriting commit history.</p>
  <h2 id="reflog-a-time-machine">Reflog: a time machine</h2>
  <p>  git reflog allows you to see a local reverse chronological list of actions you performed in the repository. This allows you to revert merges, rebases, and destructive operations in general.</p>
  <p>  Note that the reflog history is not shared among computers even if they use the same git credentials, they are purely local.</p>
  ',
  tag: tag2,
  lesson: lesson12,
  section: 'main',
)

massign2 = Sublesson.create(
  title: 'Bob, the teen',
  content: '<h3 id="instructions">Instructions</h3>
  <p> Add information about ancestry tracking</p>
  <p> Add information about</p>
  <ul>
  <li>Make groups of 2 - 3 people, this group will be your <em><strong>peer code-review</strong></em> group for this week. You will be giving feedback to the other members of your group on the solutions they present, as well as receiving feedback from them.</li>
  <li>As a group, create a Github repository with the name <code>codeable-exercises-wk1</code>. All other members should <em>fork</em> this repository.</li>
  <li>Within this repository, create a directory <code>0226-basic-programming</code>. This is where you will store your solutions.</li>
  <li>Divide the work below between your team. All exercises should be resolved by the end of the period.</li>
  <li><p>Each team member should create <em>pull requests</em> to the master branch in the original repo. Do not merge them yet.</p>
  <h3 id="peer-code-review">Peer code-review</h3>
  </li>
  <li><p>The last 10 minutes of the period are assigned to provide feedback to your team. Use Github&#39;s review feature to comment on their code within the <em>pull requests</em>.</p>
  </li>
  <li>Use the last 5 minutes to review the comments from your peers. Based on their feedback, do you think you need to make changes to your code? Go ahead and do so!</li>
  <li><p>By the end of this 15-minute period, all exercises should be resolved in the <code>master</code> branch in the original repo.</p>
  <p>Great job! 🙌</p>
  <h1 id="bob-the-teenager">Bob, the teenager</h1>
  <p>Bob is a lackadaisical teenager. In conversation, his responses are very limited.
  Bob answers <code>Sure.</code> if you ask him a question.
  He answers <code>Whoa, chill out!</code> if you yell at him.
  He answers <code>Calm down, I know what I&#39;m doing!</code> if you yell a question at him.
  He says <code>Fine. Be that way!</code> if you address him without actually saying anything.
  He answers <code>Whatever.</code> to anything else.</p>
  <p>Bob&#39;s conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.</p>
  <p>Write a program that <em>chats</em> with Bob. To every input, Bob will reply.</p>
  </li>
  </ul>',
  tag: tag3,
  lesson: lesson12,
  section: 'main',
)

Sublesson.create(
  title: 'Video Methos and Classes',
  content: '<h3 id="resources">Resources</h3>
  <ul>
  <li><a href="https://thoughtbot.com/upcase/videos/ruby-keyword-arguments">Video: Ruby Keyword Arguments</a> (16min)</li>
  </ul>
  ',
  tag: tag4,
  lesson: lesson12,
  section: 'extra',
)

Sublesson.create(
  title: 'Definitions arrays, iterators, hashes, loops',
  content: '<h2 id="arrays">Arrays</h2>
  <ul>
  <li>What is an array?</li>
  <li>How many different ways can you create an array?</li>
  <li>How many different ways can you access an element in an array? Explain the differences.</li>
  <li>How many different ways can you add an element?</li>
  <li>How do you edit elements?</li>
  <li>How do you delete elements?</li>
  <li>Research about some common methods of arrays. (length, empty?, any?, include?)</li>
  <li>What is a range? What does it mean inclusive and exclusive ranges? What is the difference?</li>
  <li>Exercise: <a href="https://github.com/ableco/code-school/blob/master/modules/1/exercises/09a-high-scores.md">High scores</a></li>
  <li><p>Individual exercise: <a href="https://www.codewars.com/kata/find-numbers-which-are-divisible-by-given-number">Find numbers which are divisible by given number</a></p>
  <h2 id="iterators">Iterators</h2>
  </li>
  <li><p>How does the <code>each</code> method work?</p>
  </li>
  <li>How does the <code>map</code> method work?</li>
  <li>How does the <code>select</code> method work?</li>
  <li>How does works the <code>reject</code> method work?</li>
  <li>Exercise: <a href="https://www.codewars.com/kata/create-a-frame">Create a frame</a></li>
  <li><p>Individual exercise: <a href="https://www.codewars.com/kata/sum-of-positive">Sum of positive</a></p>
  <h2 id="hashes-or-dictionaries">Hashes or Dictionaries</h2>
  </li>
  <li><p>What is a hash? What is the difference with an array?</p>
  </li>
  <li>How do you create a hash?</li>
  <li>What is the <code>default</code> method?</li>
  <li><p>Research about some methods of hashes. (keys, values, each_key, has_key?, has_value?, merge)</p>
  <h2 id="loops">Loops</h2>
  </li>
  <li><p>How does the <code>while</code> statement work (while...end) &amp; modifier (begin...end while)?</p>
  </li>
  <li>How does the <code>until</code> statement work (until...end) &amp; modifier (begin...end until)?</li>
  <li>How does the words <code>next</code>, <code>redo</code> and <code>retry</code>?</li>
  <li>Exercise: <a href="https://github.com/ableco/code-school/blob/master/modules/1/exercises/09b-roman-numerals.md">Roman Numerals</a></li>
  <li>Individual exercise: <a href="https://www.codewars.com/kata/logical-calculator/train/ruby">Logical calculator</a></li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson13,
  section: 'main',)


massign3 = Sublesson.create(
  title: 'Remove all the marked elements of a list',
  content: '<h3 id="instructions">Instructions</h3>
  <ul>
  <li>Get together with your <em><strong>peer code-review</strong></em> group. You will be giving feedback to the other members of your group on the solutions they present, as well as receiving feedback from them.</li>
  <li>Use the same repo from yesterday: <code>codeable-exercises-wk1</code>.</li>
  <li>Make sure to update by <em>pulling</em> the changes from yesterday.</li>
  <li>Within this repository, create a directory <code>0227-intro-algorithms</code>. This is where you will store your solutions.</li>
  <li>Divide the work below between your team. All exercises should be resolved by the end of the period.</li>
  <li><p>Each team member should create <em>pull requests</em> to the master branch in the original repo. Do not merge them yet.</p>
  <h3 id="peer-code-review">Peer code-review</h3>
  </li>
  <li><p>The last 10 minutes of the period are assigned to provide feedback to your team. Use Github&#39;s review feature to comment on their code within the <em>pull requests</em>.</p>
  </li>
  <li>Use the last 5 minutes to review the comments from your peers. Based on their feedback, do you think you need to make changes to your code? Go ahead and do so!</li>
  <li><p>By the end of this 15-minute period, all exercises should be resolved in the <code>master</code> branch in the original repo.</p>
  <p>Great job! 🙌</p>
  <p>Codewars:<a href="https://www.codewars.com/kata/remove-all-the-marked-elements-of-a-list/train/ruby">https://www.codewars.com/kata/remove-all-the-marked-elements-of-a-list/train/ruby</a></p>
  </li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson13,
  section: 'main',
)

Sublesson.create(
  title: 'Linux and Unix',
  content: '<h1 id="linux-and-unix">Linux and Unix</h1>
  <h2 id="resources">Resources</h2>
  <ul>
  <li>Bite size Linux (printed)</li>
  <li><p><a href="https://vim.rtorr.com/">VIM Cheat Sheet</a></p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What is an Operating System?</p>
  </li>
  <li>What is a process?</li>
  <li>VIM basics</li>
  </ul>',
  tag: tag1,
  lesson: lesson14,
  section: 'main',
)

Sublesson.create(
  title: 'Unix Basics',
  content: '<h1 id="unix-basics">Unix Basics</h1>
  <h2 id="why-we-use-linux-unix-">Why we use Linux/Unix?</h2>
  <p>  Linux and Unix based systems are widely adopted for building and running reliable systems and applications.</p>
  <p>  Ubuntu is the most popular desktop distribution. This will make it easier to find solutions to any problem you may encounter in the future.</p>
  <h2 id="the-terminal">The Terminal</h2>
  <p>  The Terminal is the application you will use to interact with your computer via text commands.</p>
  <p>  It helps you run applications, manage your system configuration, interact with different services and more things we&#39;ll explore in the coming weeks.</p>
  <h2 id="useful-shortcuts-commands-">Useful shortcuts/commands!</h2>
  <p>  <code>ls</code>, <code>cd</code>, <code>pwd</code>, <code>cp</code>, <code>mv</code>, <code>cat</code>, <code>mkdir</code>, <code>touch</code>, <code>rm</code>, <code>grep</code>, <code>find</code></p>
  <h2 id="environment-variables">Environment Variables</h2>
  <p>  Environment variables are global dynamic variables that enable multiple applications to share and access data about your system consistently.</p>
  <p>  Here are a few:</p>
  <p>  <code>echo $PATH</code>: a list of directories where the commands you run are found</p>
  <p>  <code>echo $EDITOR</code>: the command of the editor that the system will use by default, to write a longer commit message for instance.</p>
  <p>  <code>echo $HOME</code>: your main user directory</p>
  ',
  tag: tag2,
  lesson: lesson14,
  section: 'main',
)


Sublesson.create(
  title: 'Vim Cheat Sheet',
  content: '<h2 id="vim-resources">Vim Resources</h2>
  <p>  <a href="https://vim.rtorr.com/">https://vim.rtorr.com/</a></p>
  ',
  tag: tag4,
  lesson: lesson14,
  section: 'extra',
)



Sublesson.create(
  title: 'What is a Database ?',
  content: '<h1 id="database-overview">Database Overview</h1>
  <h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://www.guru99.com/database-design.html">https://www.guru99.com/database-design.html</a></li>
  <li><a href="https://platzi.com/blog/normalizar-una-base-de-datos-y-no-morir-en-el-intento/">https://platzi.com/blog/normalizar-una-base-de-datos-y-no-morir-en-el-intento/</a></li>
  <li><p><a href="https://www.guru99.com/er-modeling.html">https://www.guru99.com/er-modeling.html</a></p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p>What is a database? Why is it necessary to use it? when?</p>
  </li>
  <li>How can you design a database?</li>
  <li>Why database design is important?</li>
  <li>Give some techniques to design a database</li>
  <li>What means normalization? Is this important? Give some examples</li>
  <li>What is E/R modeling? Why use it?</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson21,
  section: 'main',
)

Sublesson.create(
  title: 'Library Data',
  content: '<h3 id="library-data">Library data</h3>
  <table>
  <thead>
  <tr>
  <th>BookCode</th>
  <th>Title</th>
  <th>Author</th>
  <th>Publishing</th>
  <th>ReaderName</th>
  <th>Date</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>1001</td>
  <td>Variable Compleja</td>
  <td>Murray Spiegel</td>
  <td>McGraw Hill</td>
  <td>Pérez Gómez, Juan</td>
  <td>15/04/2014</td>
  </tr>
  <tr>
  <td>1004</td>
  <td>Visual Basic</td>
  <td>E. Petroustsos</td>
  <td>Anaya</td>
  <td>Ríos Terán, Ana</td>
  <td>17/04/2014</td>
  </tr>
  <tr>
  <td>1005</td>
  <td>Estadística</td>
  <td>Murray Spiegel</td>
  <td>McGraw Hill</td>
  <td>Roca, René</td>
  <td>16/04/2014</td>
  </tr>
  <tr>
  <td>1006</td>
  <td>Oracle University</td>
  <td>Nancy Greenberg y PriyaNathan</td>
  <td>Oracle Corp.</td>
  <td>García Roque, Luis</td>
  <td>20/04/2014</td>
  </tr>
  <tr>
  <td>1007</td>
  <td>Clipper 5.01</td>
  <td>Ramalho</td>
  <td>McGraw Hill</td>
  <td>Pérez Gómez, Juan</td>
  <td>18/04/2014</td>
  </tr>
  </tbody>
  </table>
  <table>
  <thead>
  <tr>
  <th>OrderId</th>
  <th>Date</th>
  <th>ClientId</th>
  <th>ClientName</th>
  <th>Province</th>
  <th>ArticleNumber</th>
  <th>ArticleName</th>
  <th>Quantity</th>
  <th>Price</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>2301</td>
  <td>23/02/14</td>
  <td>101</td>
  <td>Martin</td>
  <td>Cajamarca</td>
  <td>3786</td>
  <td>Red</td>
  <td>3</td>
  <td>35,00</td>
  </tr>
  <tr>
  <td>2301</td>
  <td>23/02/14</td>
  <td>101</td>
  <td>Martin</td>
  <td>Cajamarca</td>
  <td>4011</td>
  <td>Raqueta</td>
  <td>6</td>
  <td>65,00</td>
  </tr>
  <tr>
  <td>2301</td>
  <td>23/02/14</td>
  <td>101</td>
  <td>Martin</td>
  <td>Cajamarca</td>
  <td>9132</td>
  <td>Paq-3</td>
  <td>8</td>
  <td>4,75</td>
  </tr>
  <tr>
  <td>2302</td>
  <td>25/02/14</td>
  <td>107</td>
  <td>Herman</td>
  <td>Lima</td>
  <td>5794</td>
  <td>Paq-6</td>
  <td>4</td>
  <td>5,00</td>
  </tr>
  <tr>
  <td>2303</td>
  <td>27/02/14</td>
  <td>110</td>
  <td>Pedro</td>
  <td>Piura</td>
  <td>4011</td>
  <td>Raqueta</td>
  <td>2</td>
  <td>65,00</td>
  </tr>
  <tr>
  <td>2303</td>
  <td>27/02/14</td>
  <td>110</td>
  <td>Pedro</td>
  <td>Piura</td>
  <td>3141</td>
  <td>Funda</td>
  <td>2</td>
  <td>10,00</td>
  </tr>
  </tbody>
  </table>
  <h3 id="e-r-modeling">E/R Modeling</h3>
  <p>  Obtén el diagrama E/R con las tres entidades siguientes:</p>
  <ul>
  <li>ALUMNO (Núm_Matrícula, Nombre, FechaNacimiento, Teléfono)</li>
  <li>ASIGNATURA (Código_asignatura, Nombre)</li>
  <li>PROFESOR (Id_P, NIF_P, Nombre, Especialidad, Teléfono)
  Teniendo en cuenta:</li>
  <li>Un alumno puede estar matriculado de una o varias asignaturas.</li>
  <li>Además puede estar matriculado en la misma asignatura más de un curso escolar (si repite).</li>
  <li>Se quiere saber el curso escolar en el que cada alumno está matriculado de cada asignatura.</li>
  <li>En una asignatura habrá como mínimo 10 y como máximo 25 alumnos.</li>
  <li>Una asignatura es impartida por un único profesor.</li>
  <li>Un profesor podrá impartir varias asignaturas.</li>
  </ul>
  ',
  tag: tag2,
  lesson: lesson21,
  section: 'main',
)

massign5 = Sublesson.create(
  title: 'Registro de Matricula',
  content: '<h1 id="database-overview">Database Overview</h1>
  <h2 id="registro-de-matr-cula">Registro de matrícula</h2>
  <table>
  <thead>
  <tr>
  <th>Código/alumno</th>
  <th>Nombre/alumno</th>
  <th>Especialidad</th>
  <th>Código/Curso</th>
  <th>Nombre_curso</th>
  <th>Nombre/docente</th>
  <th>Oficina</th>
  <th>Sección</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>382145A</td>
  <td>Luis Zuloaga</td>
  <td>Industrial</td>
  <td>MA123</td>
  <td>Matemática 2</td>
  <td>Carlos Arambulo</td>
  <td>CB-214</td>
  <td>U</td>
  </tr>
  <tr>
  <td>382145A</td>
  <td>Luis Zuloaga</td>
  <td>Industrial</td>
  <td>QU514</td>
  <td>Física Química</td>
  <td>Petra Rondinel</td>
  <td>CB-110</td>
  <td>U</td>
  </tr>
  <tr>
  <td>382145A</td>
  <td>Luis Zuloaga</td>
  <td>Industrial</td>
  <td>AU521</td>
  <td>Descriptiva</td>
  <td>Víctor Moncada</td>
  <td>CB-120</td>
  <td>W</td>
  </tr>
  <tr>
  <td>360247k</td>
  <td>Raúl Rojas</td>
  <td>Sistemas</td>
  <td>PA714</td>
  <td>Investigación 1</td>
  <td>Cesar Fernadez</td>
  <td>SC-220</td>
  <td>V</td>
  </tr>
  <tr>
  <td>360247k</td>
  <td>Raúl Rojas</td>
  <td>Sistemas</td>
  <td>MA123</td>
  <td>Matemática 2</td>
  <td>Carlos Arambulo</td>
  <td>CB-214</td>
  <td>V</td>
  </tr>
  <tr>
  <td>360247k</td>
  <td>Raúl Rojas</td>
  <td>Sistemas</td>
  <td>AU511</td>
  <td>Dibujo</td>
  <td>Víctor Moncada</td>
  <td>CB-120</td>
  <td>U</td>
  </tr>
  </tbody>
  </table>
  <h2 id="video-club">Video Club</h2>
  <p>  En una tienda de video se necesita mantener información de alrededor de 3000 casetas cada uno de los casetes tiene asignado un número por cada película, se necesita conocer un título y categoría por ejemplo: comedia, suspenso, drama, acción, ciencia ficción, etc. Se mantienen algunas copias de muchas películas. Se le da a cada película una identificación y se mantiene seguimiento de lo que contiene cada casete.</p>
  <p>  Un casete puede venir en varios formatos y una película es grabada en un solo casete; frecuentemente las películas son pedidas de acuerdo a un actor específico Tom Cruise y Demi More son los más populares es por esto que se debe mantener información de los actores que pertenecen a cada película. No en todas las películas actúan artistas famosos, a los clientes de la tienda le gusta conocer datos como el nombre real del actor, y su fecha de nacimiento.</p>
  <p>  En la tienda se mantienen información solo de los actores que aparecen en las películas y que se tiene a disposición. Solo se alquila videos a aquellos que pertenecen al club de videos. Para pertenecer al club se debe tener un buen crédito. Por cada miembro del club se mantiene una ficha con su nombre, teléfono y dirección, cada miembro del club tiene asignado un número de membresía. Se desea mantener información de todos los casetes que un cliente alquila, cuando un cliente alquila un casete se debería conocer el nombre de la película, la fecha en la que se alquila y la fecha de devolución.</p>
  <h2 id="diagrama-e-r">Diagrama E/R</h2>
  <p>  Obtener el diagrama E/R para un sistema de control de vuelos adaptado a las siguientes reglas de gestión (indicar las entidades, interrelaciones, etc., que se deducen de cada una de las reglas):</p>
  <ul>
  <li>a) De cada aeropuerto se conoce su código, nombre, ciudad y país.</li>
  <li>b) En cada aeropuerto pueden tomar tierra diversos modelos de aviones (el modelo de un avión determina su capacidad, es decir, el número de plazas.</li>
  <li>c) En cada aeropuerto existe una colección de programas de vuelo. En cada programa de vuelo se indica el número de vuelo, línea aérea y días de la semana en que existe dicho vuelo.</li>
  <li>d) Cada programa de vuelo despega de un aeropuerto y aterriza en otro.</li>
  <li>e) Los números de vuelo son únicos para todo el mundo.</li>
  <li>f) En cada aeropuerto hay múltiples aterrizajes y despegues. Todos los aeropuertos contemplados están en activo, es decir, tienen algún aterrizaje y algún despegue.</li>
  <li>g) Cada vuelo realizado pertenece a un cierto programa de vuelo. Para cada vuelo se quiere conocer su fecha, plazas vacías y el modelo de avión utilizado.</li>
  <li>h) Algunos programas de vuelo incorporan escalas técnicas intermedias entre los aeropuertos de salida y de llegada. Se entiende por escala técnica a un aterrizaje y despegue consecutivos sin altas ó bajas de pasajeros.</li>
  <li><p>i) De cada vuelo se quieren conocer las escalas técnicas ordenadas asignándole a cada una un número de orden.</p>
  <p>Por ejemplo, el programa de vuelo 555 de Iberia con vuelos los lunes y jueves despega de Barajas Madrid-España y aterriza en Caudell-Sydney-Australia teniendo las siguientes escalas técnicas: 1- Los Pradiños-Sao Paulo-Brasil, 2-El Emperador-Santiago-Chile y 3-Saint Kitts-Auckland-Nueva Zelanda.
  ¿Que cambios se producirán en el caso anterior si en las escalas pudiesen bajar o subir pasajeros? Explicar cómo se podría representar esta nueva situación.</p>
  </li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson21,
  section: 'main',
)


Sublesson.create(
  title: 'Intro de PostgresSQL',
  content: '<h1 id="sql-s-data-modeling-language">SQL’s Data Modeling Language</h1>
  <h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://www.postgresql.org/docs/10/intro-whatis.html">https://www.postgresql.org/docs/10/intro-whatis.html</a></li>
  <li><a href="https://www.postgresql.org/docs/10/ddl-constraints.html">https://www.postgresql.org/docs/10/ddl-constraints.html</a></li>
  <li><p><a href="http://www.postgresqltutorial.com/postgresql-data-types/">http://www.postgresqltutorial.com/postgresql-data-types/</a></p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p>Intro to Postgres</p>
  </li>
  <li>What is PostgreSQL?</li>
  <li><p>How to create a database?</p>
  <p><code>``bash
  $ brew services start postgresql
  $ createdb</code>whoami`
  $ createuser postgres -P -s
  $ psql</p>
  </li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson22,
  section: 'main',
)


Sublesson.create(
  title: 'Practice SQL',
  content: '<pre><code>  - How to create a <span class="hljs-keyword">table</span>?
  ```sql
    CREATE <span class="hljs-keyword">TABLE</span> products <span class="hljs-comment">(</span>
      product_no integer,
      name text,
      price numeric
    );
</code></pre><ul>
<li>How to delete a table?<pre><code class="lang-sql">DROP <span class="hljs-keyword">TABLE</span> products
</code></pre>
</li>
<li>How do you define a default value in a column?<pre><code class="lang-sql">price numeric <span class="hljs-literal">DEFAULT</span> <span class="hljs-number">0.00</span>
</code></pre>
</li>
<li>What are the constraints?</li>
<li>What types of constraints do you know? Give some examples</li>
<li>What is a CHECK constraint? Why would you use it?<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
  price <span class="hljs-built_in">numeric</span> <span class="hljs-keyword">CHECK</span> (price &gt; <span class="hljs-number">0</span>)
);
</code></pre>
<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
  price <span class="hljs-built_in">numeric</span> <span class="hljs-keyword">CONSTRAINT</span> positive_price <span class="hljs-keyword">CHECK</span> (price&gt; <span class="hljs-number">0</span>)
);
</code></pre>
<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
  price <span class="hljs-built_in">numeric</span> <span class="hljs-keyword">CHECK</span> (price &gt; <span class="hljs-number">0</span>),
  discounted_price <span class="hljs-built_in">numeric</span> <span class="hljs-keyword">CHECK</span> (discounted_price &gt; <span class="hljs-number">0</span>),
  <span class="hljs-keyword">CHECK</span> (price &gt; discounted_price)
);
</code></pre>
</li>
<li>What is a Not Null constraint? Why would you use it?<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span> <span class="hljs-keyword">NOT</span> <span class="hljs-literal">NULL</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span> <span class="hljs-keyword">NOT</span> <span class="hljs-literal">NULL</span>,
  price <span class="hljs-built_in">numeric</span>
);
</code></pre>
</li>
<li>What is a Unique constraint? Why would you use it?<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span> <span class="hljs-keyword">UNIQUE</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
  price <span class="hljs-built_in">numeric</span>
);
</code></pre>
<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> example (
  a <span class="hljs-built_in">integer</span>,
  b <span class="hljs-built_in">integer</span>,
  c <span class="hljs-built_in">integer</span>,
  <span class="hljs-keyword">UNIQUE</span> (a, c)
);
</code></pre>
</li>
<li>What is a primary key? Why would you use it?<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span> PRIMARY <span class="hljs-keyword">KEY</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
  price <span class="hljs-built_in">numeric</span>
);
</code></pre>
</li>
<li>What is a foreign key? Why would you use it?<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> orders (
  order_id <span class="hljs-built_in">integer</span> PRIMARY <span class="hljs-keyword">KEY</span>,
  product_no <span class="hljs-built_in">integer</span> <span class="hljs-keyword">REFERENCES</span> products (product_no),
  quantity <span class="hljs-built_in">integer</span>
);
</code></pre>
<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> products (
  product_no <span class="hljs-built_in">integer</span> PRIMARY <span class="hljs-keyword">KEY</span>,
  <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
  price <span class="hljs-built_in">numeric</span>
);
</code></pre>
<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> orders (
  order_id <span class="hljs-built_in">integer</span> PRIMARY <span class="hljs-keyword">KEY</span>,
  shipping_address <span class="hljs-built_in">text</span>,
  ...
);
</code></pre>
<pre><code class="lang-sql"><span class="hljs-keyword">CREATE</span> <span class="hljs-keyword">TABLE</span> order_items (
  product_no <span class="hljs-built_in">integer</span> <span class="hljs-keyword">REFERENCES</span> products <span class="hljs-keyword">ON</span> <span class="hljs-keyword">DELETE</span> RESTRICT,
  order_id <span class="hljs-built_in">integer</span> <span class="hljs-keyword">REFERENCES</span> orders <span class="hljs-keyword">ON</span> <span class="hljs-keyword">DELETE</span> <span class="hljs-keyword">CASCADE</span>,
  quantity <span class="hljs-built_in">integer</span>,
  PRIMARY <span class="hljs-keyword">KEY</span> (product_no, order_id)
);
</code></pre>
</li>
<li>What means RESTRICT and CASCADE?</li>
<li>How many Data-types do you know? Give some examples</li>
<li>How to edit a table?</li>
<li>How to add a column?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ADD</span> <span class="hljs-keyword">COLUMN</span> description <span class="hljs-built_in">text</span>;
</code></pre>
</li>
<li>How to remove a column?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">DROP</span> <span class="hljs-keyword">COLUMN</span> description;
<span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">DROP</span> <span class="hljs-keyword">COLUMN</span> description <span class="hljs-keyword">CASCADE</span>;
</code></pre>
</li>
<li>How to add/remove a constraint?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ADD</span> FOREIGN <span class="hljs-keyword">KEY</span> (product_group_id) <span class="hljs-keyword">REFERENCES</span> product_groups;
<span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">DROP</span> <span class="hljs-keyword">CONSTRAINT</span> some_name;
<span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">COLUMN</span> product_no <span class="hljs-keyword">SET</span> <span class="hljs-keyword">NOT</span> <span class="hljs-literal">NULL</span>;
<span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">COLUMN</span> product_no <span class="hljs-keyword">DROP</span> <span class="hljs-keyword">NOT</span> <span class="hljs-literal">NULL</span>;
</code></pre>
</li>
<li>How to change the default value of a column?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">COLUMN</span> price <span class="hljs-keyword">SET</span> <span class="hljs-keyword">DEFAULT</span> <span class="hljs-number">7.77</span>;
<span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">COLUMN</span> price <span class="hljs-keyword">DROP</span> <span class="hljs-keyword">DEFAULT</span>;
</code></pre>
</li>
<li>How to change the data-type of a column?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">COLUMN</span> price <span class="hljs-keyword">TYPE</span> <span class="hljs-built_in">numeric</span>(<span class="hljs-number">10</span>,<span class="hljs-number">2</span>);
</code></pre>
</li>
<li>How to rename a column?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">RENAME</span> <span class="hljs-keyword">COLUMN</span> product_no <span class="hljs-keyword">TO</span> product_number;
</code></pre>
</li>
<li>How to rename a table?<pre><code class="lang-sql"><span class="hljs-keyword">ALTER</span> <span class="hljs-keyword">TABLE</span> products <span class="hljs-keyword">RENAME</span> <span class="hljs-keyword">TO</span> items;
</code></pre>
</li>
</ul>
',
  tag: tag2,
  lesson: lesson22,
  section: 'main',
)

massign6 = Sublesson.create(
  title: 'Create a Database',
  content: '<h1 id="sql-s-data-modeling-language">SQL’s Data Modeling Language</h1>
  <p>  Create the database of the previous day&#39;s exercises.</p>
  <p>  Use <a href="https://github.com/stympy/faker">Faker</a> to populate the database with data.</p>
  ',
  tag: tag3,
  lesson: lesson22,
  section: 'main',
)

Sublesson.create(
  title: 'SQL Exercises',
  content: '# More SQL Exercises
  
  https://www.wiseowl.co.uk/sql/exercises/standard/',
  tag: tag4,
  lesson: lesson22,
  section: 'extra',
)

Sublesson.create(
  title: 'SQL Manipulation',
  content: '<h1 id="sql-s-data-manipulation-language">SQL’s Data Manipulation Language</h1>
  <h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://www.postgresql.org/docs/10/dml-insert.html">https://www.postgresql.org/docs/10/dml-insert.html</a></li>
  <li><a href="https://www.postgresql.org/docs/10/dml-update.html">https://www.postgresql.org/docs/10/dml-update.html</a></li>
  <li><p><a href="https://www.postgresql.org/docs/10/dml-delete.html">https://www.postgresql.org/docs/10/dml-delete.html</a></p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p>How can you show all the rows from a table?</p>
  <pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> * <span class="hljs-keyword">FROM</span> products;
  </code></pre>
  </li>
  <li>Inserting Data<ul>
  <li>How to insert a row?<pre><code class="lang-sql"><span class="hljs-keyword">INSERT</span> <span class="hljs-keyword">INTO</span> products (product_no, <span class="hljs-keyword">name</span>, price) <span class="hljs-keyword">VALUES</span> (<span class="hljs-number">1</span>, <span class="hljs-string">"Cheese"</span>, <span class="hljs-number">9.99</span>);
  </code></pre>
  </li>
  <li>How to insert default value in a row?<pre><code class="lang-sql"><span class="hljs-keyword">INSERT</span> <span class="hljs-keyword">INTO</span> products <span class="hljs-keyword">DEFAULT</span> <span class="hljs-keyword">VALUES</span>;
  </code></pre>
  </li>
  </ul>
  </li>
  <li>How to insert multiple rows?<pre><code class="lang-sql">INSERT INTO products (product_no, name, price) VALUES
    (<span class="hljs-number">1</span>, <span class="hljs-string">"Cheese"</span>, <span class="hljs-number">9.99</span>),
    (<span class="hljs-number">2</span>, <span class="hljs-string">"Bread"</span>, <span class="hljs-number">1.99</span>),
    (<span class="hljs-number">3</span>, <span class="hljs-string">"Milk"</span>, <span class="hljs-number">2.99</span>);
  </code></pre>
  </li>
  <li>Updating Data<ul>
  <li>How to update a column in all the rows?<pre><code class="lang-sql">UPDATE products <span class="hljs-keyword">SET</span> price <span class="hljs-comment">= 10</span>;
  </code></pre>
  </li>
  <li>How to update a column in a specified row?<pre><code class="lang-sql"><span class="hljs-keyword">UPDATE</span> products <span class="hljs-keyword">SET</span> price = <span class="hljs-number">10</span> <span class="hljs-keyword">WHERE</span> price = <span class="hljs-number">5</span>;
  </code></pre>
  </li>
  <li>How to update multiple columns in a row?<pre><code class="lang-sql"><span class="hljs-keyword">UPDATE</span> products <span class="hljs-keyword">SET</span> price = <span class="hljs-number">10</span> <span class="hljs-keyword">WHERE</span> price &gt; <span class="hljs-number">5</span>;
  </code></pre>
  </li>
  </ul>
  </li>
  <li>Deleting Data<ul>
  <li>How to delete a specific row?<pre><code class="lang-sql"><span class="hljs-keyword">DELETE</span> <span class="hljs-keyword">FROM</span> products <span class="hljs-keyword">WHERE</span> price = <span class="hljs-number">10</span>;
  </code></pre>
  </li>
  <li>How to delete all the rows in the table?<pre><code class="lang-sql"><span class="hljs-keyword">DELETE</span> <span class="hljs-keyword">FROM</span> products;
  </code></pre>
  </li>
  </ul>
  </li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson23,
  section: 'main',
)

massign7 = Sublesson.create(
  title: 'Queries, Sorting and paginating',
  content: '<h1 id="retrieving-data-queries-sorting-paginating">Retrieving data: Queries, Sorting &amp; Paginating</h1>
  <h2 id="registro-de-matr-cula">Registro de Matrícula</h2>
  <ul>
  <li>Cuáles son las 5 especialidades que tiene la mayor cantidad de alumnos?</li>
  <li>Cuáles son las 10 secciones más utilizadas? Hay alguna sección que no es usada en ningún curso?</li>
  <li>Cuáles son los alumnos que tienen más de 6 cursos?</li>
  <li><p>Cuál es el profesor que imparte más clases?</p>
  <h2 id="videoclub">VideoClub</h2>
  </li>
  <li><p>Cuál es la película más popular por semana, mes y año?</p>
  </li>
  <li>Cuáles son las 5 películas menos populares?</li>
  <li>Cuál actor aparece en más películas?</li>
  <li>Cuál es la categoría de películas más solicitada?</li>
  <li><p>Cuál es el usuario que ha alquilado más películas? Cuál menos?</p>
  <h2 id="vuelos">Vuelos</h2>
  </li>
  <li><p>Creen una consulta para obtener el vuelo con menos escalas desde Lima a Kyoto y desde Bolivia a Berlín.</p>
  </li>
  <li>Cuál es el vuelo con mayor cantidad de escalas técnicas que podría hacer? Cuánto me costaría hacer el mismo vuelo sin escalas?</li>
  <li>Cuál es el aeropuerto con más salidas? Cuál el que tiene más llegadas?</li>
  <li>Cuál es el aeropuerto más usado para escalas técnicas?</li>
  <li>Cuál es el avión que más vuelos realizó?</li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson23,
  section: 'main',
)

Sublesson.create(
  title: 'Retrieving Data',
  content: '<h1 id="retrieving-data-queries-sorting-paginating">Retrieving data: Queries, Sorting &amp; Paginating</h1>
  <h2 id="resources">Resources</h2>
  <ul>
  <li><a href="http://www.postgresqltutorial.com/postgresql-select/">http://www.postgresqltutorial.com/postgresql-select/</a></li>
  <li><a href="https://www.postgresql.org/docs/10/queries-table-expressions.html#QUERIES-WHERE">https://www.postgresql.org/docs/10/queries-table-expressions.html#QUERIES-WHERE</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-where/">http://www.postgresqltutorial.com/postgresql-where/</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-order-by/">http://www.postgresqltutorial.com/postgresql-order-by/</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-limit/">http://www.postgresqltutorial.com/postgresql-limit/</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-like/">http://www.postgresqltutorial.com/postgresql-like/</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-count-function/">http://www.postgresqltutorial.com/postgresql-count-function/</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-sum-function/">http://www.postgresqltutorial.com/postgresql-sum-function/</a></li>
  <li><a href="http://www.postgresqltutorial.com/postgresql-max-function/">http://www.postgresqltutorial.com/postgresql-max-function/</a></li>
  <li><p><a href="http://www.postgresqltutorial.com/postgresql-min-function/">http://www.postgresqltutorial.com/postgresql-min-function/</a></p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p><code>SELECT, FROM</code></p>
  <ul>
  <li>How to use SELECT statement?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> <span class="hljs-number">3</span> * <span class="hljs-number">4</span>;
  <span class="hljs-keyword">SELECT</span> random();
  </code></pre>
  </li>
  <li>How to use FROM keyword?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> * <span class="hljs-keyword">FROM</span> table1;
  <span class="hljs-keyword">SELECT</span> a, b + c <span class="hljs-keyword">FROM</span> table1;
  </code></pre>
  </li>
  </ul>
  </li>
  <li>WHERE<ul>
  <li>How to use WHERE clause? Why is necessary?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> last_name, first_name <span class="hljs-keyword">FROM</span> customer <span class="hljs-keyword">WHERE</span> first_name = <span class="hljs-string">"Jamie"</span>;
  </code></pre>
  </li>
  </ul>
  </li>
  <li>ORDER BY<ul>
  <li>How to use ORDER BY clause? What does the clause?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> first_name, last_name <span class="hljs-keyword">FROM</span> customer <span class="hljs-keyword">ORDER</span> <span class="hljs-keyword">BY</span> first_name <span class="hljs-keyword">ASC</span>;
  <span class="hljs-keyword">SELECT</span> first_name, last_name <span class="hljs-keyword">FROM</span> customer <span class="hljs-keyword">ORDER</span> <span class="hljs-keyword">BY</span> first_name <span class="hljs-keyword">ASC</span>, last_name <span class="hljs-keyword">DESC</span>;
  </code></pre>
  </li>
  </ul>
  </li>
  <li>LIMIT, OFFSET<ul>
  <li>How to use LIMIT clause?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> film_id, title, release_year <span class="hljs-keyword">FROM</span> film <span class="hljs-keyword">ORDER</span> <span class="hljs-keyword">BY</span> film_id <span class="hljs-keyword">LIMIT</span> <span class="hljs-number">5</span>;
  </code></pre>
  </li>
  <li>How to use OFFSET clause?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> film_id, title, release_year <span class="hljs-keyword">FROM</span> film <span class="hljs-keyword">ORDER</span> <span class="hljs-keyword">BY</span> film_id <span class="hljs-keyword">LIMIT</span> <span class="hljs-number">5</span> <span class="hljs-keyword">OFFSET</span> <span class="hljs-number">3</span>;
  </code></pre>
  </li>
  </ul>
  </li>
  <li>LIKE<ul>
  <li>How to use LIKE operator?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> first_name, last_name <span class="hljs-keyword">FROM</span> customer <span class="hljs-keyword">WHERE</span> first_name <span class="hljs-keyword">LIKE</span> <span class="hljs-string">"Jen%"</span>;
  </code></pre>
  </li>
  <li>What is the difference between the following sentences?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span>
  <span class="hljs-string">"foo"</span> <span class="hljs-keyword">LIKE</span> <span class="hljs-string">"foo"</span>,
  <span class="hljs-string">"foo"</span> <span class="hljs-keyword">LIKE</span> <span class="hljs-string">"f%"</span>,
  <span class="hljs-string">"foo"</span> <span class="hljs-keyword">LIKE</span> <span class="hljs-string">"_o_"</span>,
  <span class="hljs-string">"bar"</span> <span class="hljs-keyword">LIKE</span> <span class="hljs-string">"b_"</span>;
  </code></pre>
  </li>
  <li>How to use NOT LIKE operator?</li>
  <li>How to use ILIKE operator?</li>
  </ul>
  </li>
  <li>COUNT, SUM, MAX, MIN<ul>
  <li>How works COUNT function?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> <span class="hljs-keyword">COUNT</span>(*) <span class="hljs-keyword">FROM</span> table_name;
  <span class="hljs-keyword">SELECT</span> customer_id, <span class="hljs-keyword">COUNT</span> (customer_id)<span class="hljs-keyword">FROM</span> payment <span class="hljs-keyword">GROUP</span> <span class="hljs-keyword">BY</span> customer_id;
  </code></pre>
  </li>
  <li>How works SUM function?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> <span class="hljs-keyword">SUM</span> (amount) <span class="hljs-keyword">AS</span> total <span class="hljs-keyword">FROM</span> payment;
  </code></pre>
  </li>
  <li>How works MAX function?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> <span class="hljs-keyword">MAX</span>(amount) <span class="hljs-keyword">FROM</span> payment;
  </code></pre>
  </li>
  <li>How works MIN function?<pre><code class="lang-sql"><span class="hljs-keyword">SELECT</span> <span class="hljs-keyword">MIN</span>(amount)<span class="hljs-keyword">FROM</span> payment;
  </code></pre>
  </li>
  </ul>
  </li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson24,
  section: 'main',
)

massign8 = Sublesson.create(
  title: 'Retrieving Data',
  content: '<h1 id="retrieving-data-queries-sorting-paginating">Retrieving data: Queries, Sorting &amp; Paginating</h1>
  <h2 id="registro-de-matr-cula">Registro de Matrícula</h2>
  <ul>
  <li>Cuáles son las 5 especialidades que tiene la mayor cantidad de alumnos?</li>
  <li>Cuáles son las 10 secciones más utilizadas? Hay alguna sección que no es usada en ningún curso?</li>
  <li>Cuáles son los alumnos que tienen más de 6 cursos?</li>
  <li><p>Cuál es el profesor que imparte más clases?</p>
  <h2 id="videoclub">VideoClub</h2>
  </li>
  <li><p>Cuál es la película más popular por semana, mes y año?</p>
  </li>
  <li>Cuáles son las 5 películas menos populares?</li>
  <li>Cuál actor aparece en más películas?</li>
  <li>Cuál es la categoría de películas más solicitada?</li>
  <li><p>Cuál es el usuario que ha alquilado más películas? Cuál menos?</p>
  <h2 id="vuelos">Vuelos</h2>
  </li>
  <li><p>Creen una consulta para obtener el vuelo con menos escalas desde Lima a Kyoto y desde Bolivia a Berlín.</p>
  </li>
  <li>Cuál es el vuelo con mayor cantidad de escalas técnicas que podría hacer? Cuánto me costaría hacer el mismo vuelo sin escalas?</li>
  <li>Cuál es el aeropuerto con más salidas? Cuál el que tiene más llegadas?</li>
  <li>Cuál es el aeropuerto más usado para escalas técnicas?</li>
  <li>Cuál es el avión que más vuelos realizó?</li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson24,
  section: 'main',
)

Sublesson.create(
  title: 'Intro to HTML & CSS',
  content: '<h1 id="html-css-basics">HTML &amp; CSS Basics</h1>
  <blockquote>
  <p><a href="https://sergiodxa.com/slides/codeable/html-css-basics/">Slides</a></p>
  </blockquote>
  <h2 id="objective">Objective</h2>
  <ul>
  <li>Learn the basics of Semantic HTML</li>
  <li>Learn about a11y and why is it important</li>
  <li>Learn about SEO and how could correctly use HTML to improve it</li>
  <li>Learn about the Box Model in CSS</li>
  <li>Learn about the kind of positioning exists</li>
  <li><p>Learn how to use typography and control it</p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p>Semantic HTML</p>
  </li>
  <li>Accessibility</li>
  <li>SEO</li>
  <li>Box Model</li>
  <li>Positioning</li>
  <li><p>Typography</p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What is semantic HTML?</p>
  </li>
  <li>What semantic HTML tags do you know?</li>
  <li>Is semantic HTML a HTML5 feature only?</li>
  <li>What is accessibility? Why is it important?</li>
  <li>What is SEO? Why is it important?</li>
  <li>What basic practices could you apply to improve your SEO?</li>
  <li>What is the Box Model in CSS?<ul>
  <li>What is the content?</li>
  <li>What is a padding?</li>
  <li>What is the border?</li>
  <li>What is a margin?</li>
  </ul>
  </li>
  <li>What kind of positioning exists in CSS?<ul>
  <li>What is the default position value?</li>
  <li>What is position static?</li>
  <li>What is position relative?</li>
  <li>What is position absolute?</li>
  <li>What is position fixed?</li>
  <li>What is position sticky?</li>
  </ul>
  </li>
  <li>What CSS properties affect the typography?<ul>
  <li>How could you change the color of a text?</li>
  <li>How could you define the font to use?<ul>
  <li>What is a system font?</li>
  <li>What is a font face?</li>
  <li>How could you define a font face?</li>
  </ul>
  </li>
  <li>How could you change the size of a text?</li>
  <li>How could you change the weight of a text?</li>
  <li>How could you change the style of a text?</li>
  <li>How could you change the distance between each character?</li>
  <li>How could you change the distance between each line of a text?</li>
  <li>How could you change the alignment of a text?</li>
  <li>How could you indent a text?</li>
  <li>How could you control the overflow of a text?</li>
  <li>How could you add a shadow to a text?</li>
  <li>How could you transform the case of a text? What transforms are available?</li>
  <li>How could you define the space between words?</li>
  <li>How could you define how a word will break if it doesn&#39;t fit in the screen?</li>
  </ul>
  </li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson31,
  section: 'main',
)

massign9 = Sublesson.create(
  title: 'Create a Personal Website',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Create the layout of your personal website, it should:</p>
  <ul>
  <li>Use correct semantic tags.</li>
  <li>Pass Google Chrome SEO audits.</li>
  <li><p>Pass Google Chrome Accessibility audits.</p>
  <p>The typography should be either</p>
  </li>
  <li><p>A system font</p>
  </li>
  <li>Loaded from Google Fonts.</li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson31,
  section: 'main',
)

Sublesson.create(
  title: 'Extra information',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://htmlreference.io/">HTML Reference</a></li>
  <li><a href="https://cssreference.io/">CSS Reference</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Glossary/Semantics#Semantics_in_HTML">Semantics in HTML</a></li>
  <li><a href="https://yeisondaza.com/que-es-significa-la-accesibilidad-en-la-web">Qué significa la accesibilidad en la web</a></li>
  <li><a href="https://a11yproject.com/checklist.html">Web Accessibility Checklist</a></li>
  <li><a href="https://developers.google.com/web/fundamentals/accessibility/">Accessibility</a></li>
  <li><a href="https://www.w3.org/WAI/">Web Accessibility Initiative</a></li>
  <li><a href="https://geon.github.io/programming/2016/03/03/dsxyliea">Why Accessibility Matter</a></li>
  <li><a href="https://twitter.com/ryanflorence/status/1013857875230257153?lang=en">Why is it important to write accessible content</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Box_model">The Box Model</a></li>
  <li><a href="https://cssreference.io/box-model/">Box Model in CSS</a></li>
  <li><a href="https://cssreference.io/positioning/">Positioning</a></li>
  <li><a href="https://cssreference.io/typography/">Typography</a></li>
  </ul>
  ',
  tag: tag5,
  lesson: lesson31,
  section: 'extra',
)

Sublesson.create(
  title: 'Flexbox & Grid Layout',
  content: '<h2 id="topics">Topics</h2>
  <ul>
  <li>Flexbox Layout</li>
  <li>Grid Layout</li>
  <li>Media Queries</li>
  <li>Responsive Design</li>
  <li><p>Mobile First vs Desktop First</p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What are CSS Layouts?</p>
  </li>
  <li>What is Flexbox?</li>
  <li>What is Grid?</li>
  <li>What other layouts exists?</li>
  <li>What is a Media Query?</li>
  <li>What kind of media queries exists?</li>
  <li>What is Responsive Design?</li>
  <li>How it relates to Media Queries?</li>
  <li>What is Mobile First?</li>
  <li>What is Desktop First?</li>
  <li>Which one is better?</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson32,
  section: 'main',
)

Sublesson.create(
  title: 'Play in this websites',
  content: '<h2 id="workshop">Workshop</h2>
  <p>  Complete the exercises of <a href="https://flexboxfroggy.com/#es">Flexbox Froggy</a>.
    Complete the exercises of <a href="https://cssgridgarden.com/#es">Grid Garden</a>.</p>
  ',
  tag: tag2,
  lesson: lesson32,
  section: 'main',
)

massign10 = Sublesson.create(
  title: 'Replicate a layout using Flexbox and Grid',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Replicate the following layout using Flexbox and Grid.</p>
  <p>  <img src="/_media/m3w1d2/facebook.jpg" alt=""></p>
  <p>  Add a responsive version imagining it by yourself.</p>
  ',
  tag: tag3,
  lesson: lesson32,
  section: 'main',
)

Sublesson.create(
  title: 'Flexbox',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://cssreference.io/flexbox/">Flexbox Layout</a></li>
  <li><a href="https://cssreference.io/css-grid/">Grid Layout</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries">Media Queries</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Responsive/responsive_design_building_blocks">The building blocks of responsive design</a></li>
  <li><a href="https://www.brainleaf.com/blog/brainleaf-news/mobile-first-vs-desktop-first-how-to-choose-a-responsive-strategy/">Mobile First VS Desktop First: How To Choose A Responsive Strategy</a></li>
  <li><a href="https://www.youtube.com/watch?v=J9VhXXCIYRs">Tutorial de CSS Grid Layout</a> (video)</li>
  <li><a href="https://www.youtube.com/watch?v=YnphMCRsdXM">La importancia del Responsive Design</a> (video)</li>
  <li><a href="https://www.youtube.com/watch?v=4sO1Vje6A-4">5 Tips con Mobile First</a> (video)</li>
  <li><a href="https://flexboxfroggy.com/#es">Flexbox Froggy</a></li>
  </ul>
  ',
  tag: tag5,
  lesson: lesson32,
  section: 'extra',
)

Sublesson.create(
  title: 'CSS Animations',
  content: '<h2 id="objectives">Objectives</h2>
  <ul>
  <li>Learn about the different type of transformations available in CSS</li>
  <li>Learn to create transitions in CSS for any property</li>
  <li><p>Learn to create animations in CSS</p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p>Transitions</p>
  </li>
  <li>Transforms</li>
  <li><p>Animations</p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What is a transition?</p>
  <ul>
  <li>How could you customize a transition?</li>
  </ul>
  </li>
  <li>What is an animation?<ul>
  <li>How could you customize an animation?</li>
  <li>How could you create an animation?</li>
  <li>What animations come built-in with the browser?</li>
  </ul>
  </li>
  <li>What is a timing function?<ul>
  <li>What is ease?</li>
  <li>What is ease-in?</li>
  <li>What is ease-out?</li>
  <li>What is ease-in-out?</li>
  <li>What is linear?</li>
  <li>What is step-start?</li>
  <li>What is step-end?</li>
  <li>What is steps?</li>
  </ul>
  </li>
  <li>What is the difference?</li>
  <li>When you should use a transition and when an animation?</li>
  <li>What is a transformation?</li>
  <li>What kind of transformations exists?<ul>
  <li>What is translate?</li>
  <li>What is translateX?</li>
  <li>What is translateY?</li>
  <li>What is translateZ?</li>
  <li>What is scale?</li>
  <li>What is scaleX?</li>
  <li>What is scaleY?</li>
  <li>What is rotate?</li>
  <li>What is skew?</li>
  <li>What is skewX?</li>
  <li>What is skewY?</li>
  </ul>
  </li>
  <li>Is it possible to combine transformations? How?</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson33,
  section: 'main',
)

Sublesson.create(
  title: 'Transition Examples',
  content: '<h2 id="workshop">Workshop</h2>
  <p>  In your <code>index.html</code>:</p>
  <pre><code class="lang-html">  <span class="hljs-meta">&lt;!DOCTYPE html&gt;</span>
    <span class="hljs-tag">&lt;<span class="hljs-name">html</span> <span class="hljs-attr">lang</span>=<span class="hljs-string">"en"</span>&gt;</span>
      <span class="hljs-tag">&lt;<span class="hljs-name">head</span>&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">meta</span> <span class="hljs-attr">charset</span>=<span class="hljs-string">"UTF-8"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">meta</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"viewport"</span> <span class="hljs-attr">content</span>=<span class="hljs-string">"width=device-width, initial-scale=1.0"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">meta</span> <span class="hljs-attr">http-equiv</span>=<span class="hljs-string">"X-UA-Compatible"</span> <span class="hljs-attr">content</span>=<span class="hljs-string">"ie=edge"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">link</span> <span class="hljs-attr">rel</span>=<span class="hljs-string">"stylesheet"</span> <span class="hljs-attr">href</span>=<span class="hljs-string">"style.css"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">title</span>&gt;</span>Document<span class="hljs-tag">&lt;/<span class="hljs-name">title</span>&gt;</span>
      <span class="hljs-tag">&lt;/<span class="hljs-name">head</span>&gt;</span>
      <span class="hljs-tag">&lt;<span class="hljs-name">body</span>&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"rectangle"</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>
      <span class="hljs-tag">&lt;/<span class="hljs-name">body</span>&gt;</span>
    <span class="hljs-tag">&lt;/<span class="hljs-name">html</span>&gt;</span>
  </code></pre>
  <p>  In <code>style.css</code>:</p>
  <pre><code class="lang-css">  <span class="hljs-selector-tag">html</span>,
    <span class="hljs-selector-tag">body</span> {
      <span class="hljs-attribute">height</span>: <span class="hljs-number">100%</span>;
    }
  
    <span class="hljs-selector-tag">body</span> {
      <span class="hljs-attribute">display</span>: flex;
      <span class="hljs-attribute">justify-content</span>: center;
      <span class="hljs-attribute">align-items</span>: center;
    }
  
    <span class="hljs-selector-class">.rectangle</span> {
      <span class="hljs-attribute">border</span>: <span class="hljs-number">10px</span> solid blue;
      <span class="hljs-attribute">background-color</span>: red;
      <span class="hljs-attribute">width</span>: <span class="hljs-number">300px</span>;
      <span class="hljs-attribute">height</span>: <span class="hljs-number">200px</span>;
    }
  </code></pre>
  <h3 id="-transition-property-"><code>transition-property</code></h3>
  <pre><code class="lang-css">  <span class="hljs-selector-class">.rectangle</span> {
      <span class="hljs-attribute">transition-property</span>: border-color;
    }
  
    <span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">border-color</span>: black;
    }
  </code></pre>
  <h3 id="-transition-delay-"><code>transition-delay</code></h3>
  <pre><code class="lang-css">  <span class="hljs-selector-class">.rectangle</span> {
      <span class="hljs-attribute">transition-property</span>: border-color;
      <span class="hljs-attribute">transition-delay</span>: <span class="hljs-number">0.5s</span>;
    }
  
    <span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">border-color</span>: black;
    }
  </code></pre>
  <h3 id="-transition-duration-"><code>transition-duration</code></h3>
  <pre><code class="lang-css">  <span class="hljs-selector-class">.rectangle</span> {
      <span class="hljs-attribute">transition-property</span>: all;
      <span class="hljs-attribute">transition-delay</span>: <span class="hljs-number">0.5s</span>;
      <span class="hljs-attribute">transition-duration</span>: <span class="hljs-number">1.2s</span>;
    }
  
    <span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">translateX</span>(200px);
    }
  </code></pre>
  <h3 id="-transition-timing-function-ease-"><code>transition-timing-function: ease;</code></h3>
  <pre><code class="lang-css">  <span class="hljs-selector-class">.rectangle</span> {
      <span class="hljs-attribute">transition-property</span>: all;
      <span class="hljs-attribute">transition-duration</span>: <span class="hljs-number">1.5s</span>;
      <span class="hljs-attribute">transition-timing-function</span>: ease;
    }
  
    <span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">translateX</span>(200px);
    }
  </code></pre>
  <h3 id="-transition-timing-function-ease-in-"><code>transition-timing-function: ease-in;</code></h3>
  <pre><code class="lang-css">  <span class="hljs-selector-class">.rectangle</span> {
      <span class="hljs-attribute">transition-property</span>: all;
      <span class="hljs-attribute">transition-duration</span>: <span class="hljs-number">1.5s</span>;
      <span class="hljs-attribute">transition-timing-function</span>: ease-in;
    }
  
    <span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">translateX</span>(200px);
    }
  </code></pre>
  <ul>
  <li><p>Change <code>transition-timing-function</code> by:</p>
  <ul>
  <li>ease-out</li>
  <li>ease-in-out</li>
  <li>linear</li>
  <li>step-start</li>
  <li>step-end</li>
  <li>steps</li>
  </ul>
  <h3 id="transform">Transform</h3>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: none;
  }
  </code></pre>
  <h4 id="transform-translatex">transform: translateX</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">translateX</span>(40px);
  }
  </code></pre>
  <h4 id="transform-translatey">Transform: translateY</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">translateY</span>(40px);
  }
  </code></pre>
  <h4 id="transform-translate">Transform: translate</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">translate</span>(10px, 40px);
  }
  </code></pre>
  <h4 id="transform-scalex">Transform: scaleX</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">scaleX</span>(1.5);
  }
  </code></pre>
  <h4 id="transform-scaley">Transform: scaleY</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">scaleY</span>(1.5);
  }
  </code></pre>
  <h4 id="transform-scale">Transform: scale</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">scale</span>(0.5, 1.5);
  }
  </code></pre>
  <h4 id="transform-rotate">Transform: rotate</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">rotate</span>(45deg);
  }
  </code></pre>
  <h4 id="transform-skewx">Transform: skewX</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">skewX</span>(15deg);
  }
  </code></pre>
  <h4 id="transform-skewy">Transform: skewY</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">skewY</span>(45deg);
  }
  </code></pre>
  <h4 id="transform-skew">Transform: skew</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span><span class="hljs-selector-pseudo">:hover</span> {
  <span class="hljs-attribute">transform</span>: <span class="hljs-built_in">skew</span>(10deg, -20deg);
  }
  </code></pre>
  <h3 id="animations">Animations</h3>
  <h4 id="create-an-animation-slidein">Create an animation: SlideIn</h4>
  <pre><code class="lang-css">@<span class="hljs-keyword">keyframes</span> slidein {
  <span class="hljs-selector-tag">from</span> {
    <span class="hljs-attribute">margin-left</span>: <span class="hljs-number">100%</span>;
    <span class="hljs-attribute">width</span>: <span class="hljs-number">300%</span>;
  }
  
  <span class="hljs-selector-tag">to</span> {
    <span class="hljs-attribute">margin-left</span>: <span class="hljs-number">0%</span>;
    <span class="hljs-attribute">width</span>: <span class="hljs-number">100%</span>;
  }
  }
  </code></pre>
  <h4 id="use-animations">Use animations</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span> {
  <span class="hljs-attribute">animation-name</span>: slidein;
  <span class="hljs-attribute">animation-duration</span>: <span class="hljs-number">3s</span>;
  }
  </code></pre>
  <h4 id="repeat-the-animation">Repeat the animation</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span> {
  <span class="hljs-attribute">animation-name</span>: slidein;
  <span class="hljs-attribute">animation-duration</span>: <span class="hljs-number">3s</span>;
  <span class="hljs-attribute">animation-iteration-count</span>: infinite;
  }
  </code></pre>
  <h4 id="back-to-the-beginning">Back to the beginning</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span> {
  <span class="hljs-attribute">animation-name</span>: slidein;
  <span class="hljs-attribute">animation-duration</span>: <span class="hljs-number">3s</span>;
  <span class="hljs-attribute">animation-iteration-count</span>: infinite;
  <span class="hljs-attribute">animation-direction</span>: alternate;
  }
  </code></pre>
  <h4 id="shorthand">Shorthand</h4>
  <pre><code class="lang-css"><span class="hljs-selector-class">.rectangle</span> {
  <span class="hljs-attribute">animation</span>: <span class="hljs-number">3s</span> infinite alternate slidein;
  }
  </code></pre>
  </li>
  </ul>
  ',
  tag: tag2,
  lesson: lesson33,
  section: 'main',
)

massign11 = Sublesson.create(
  title: 'Replace all of the following animations using either CSS animations or transitions',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Replace all of the following animations using either CSS animations or transitions.</p>
  <p>  <img src="/_media/m3w1d3/animation-1.gif" alt="">
    <img src="/_media/m3w1d3/animation-2.gif" alt="">
    <img src="/_media/m3w1d3/animation-3.gif" alt="">
    <img src="/_media/m3w1d3/animation-4.gif" alt=""></p>
  ',
  tag: tag3,
  lesson: lesson33,
  section: 'main',
)

Sublesson.create(
  title: 'Replicate one more',
  content: '<p>Replicate one or more of those pens:</p>
  <ul>
  <li><a href="https://codepen.io/SaraSoueidan/pen/sBELl">https://codepen.io/SaraSoueidan/pen/sBELl</a></li>
  <li><a href="https://codepen.io/SaraSoueidan/pen/zsgit">https://codepen.io/SaraSoueidan/pen/zsgit</a></li>
  </ul>
  ',
  tag: tag4,
  lesson: lesson33,
  section: 'extra',
)

Sublesson.create(
  title: 'Fundamentals',
  content: '<h2 id="objectives">Objectives</h2>
  <ul>
  <li>Learn about types and coercion</li>
  <li>Learn about the basic features of JavaScript</li>
  <li><p>Learn about JavaScript in the Browser and in Node.js</p>
  <h2 id="topics">Topics</h2>
  </li>
  <li><p>Types</p>
  </li>
  <li>Coercion</li>
  <li>Operators</li>
  <li>Destructuring Assignment</li>
  <li>Variables &amp; Constants</li>
  <li>Comments</li>
  <li>Control Structures</li>
  <li>Template Literals</li>
  <li><p>Browser vs Node.js</p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What data types has JavaScript?</p>
  </li>
  <li>What is a Primitive?</li>
  <li>What is Coercion? How to properly transform data types?</li>
  <li>What operators has JavaScript?</li>
  <li>How do you define a variable? And a constant?</li>
  <li>Why a constant is not really &quot;constant&quot; based on the type of value stored there?</li>
  <li>What is the difference between <code>var</code>, <code>let</code> and <code>const</code>?</li>
  <li>How do you write comments in JavaScript?</li>
  <li>What control structures has JavaScript?</li>
  <li>Where could we use JavaScript?</li>
  <li>What is Node.js? What is it for?</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson34,
  section: 'main',
)

Sublesson.create(
  title: 'Types, Coercion, Operators, Control Structures',
  content: '<h2 id="workshop">Workshop</h2>
  <h3 id="types">Types</h3>
  <pre><code class="lang-js">  <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-number">123</span>); <span class="hljs-comment">// number</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-number">123.456</span>); <span class="hljs-comment">// number</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-string">"Codeable"</span>); <span class="hljs-comment">// string</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> [<span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>]); <span class="hljs-comment">// object (actually an array)"</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> { <span class="hljs-attr">key</span>: <span class="hljs-string">"value"</span> }); <span class="hljs-comment">// object</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-built_in">Symbol</span>()); <span class="hljs-comment">// symbol</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-built_in">Symbol</span>(<span class="hljs-string">"name"</span>)); <span class="hljs-comment">// symbol</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-built_in">Symbol</span>.for(<span class="hljs-string">"name"</span>)); <span class="hljs-comment">// symbol</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-literal">null</span>); <span class="hljs-comment">// object</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-literal">undefined</span>); <span class="hljs-comment">// undefined</span>
  </code></pre>
  <h3 id="coercion">Coercion</h3>
  <pre><code class="lang-js">  <span class="hljs-built_in">console</span>.log(<span class="hljs-literal">true</span> + <span class="hljs-literal">false</span>); <span class="hljs-comment">// 1</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-number">12</span> / <span class="hljs-string">"6"</span>); <span class="hljs-comment">// 2</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">"number"</span> + <span class="hljs-number">15</span> + <span class="hljs-number">3</span>); <span class="hljs-comment">// "number153"</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-number">15</span> + <span class="hljs-number">3</span> + <span class="hljs-string">"number"</span>); <span class="hljs-comment">// "18number"</span>
    <span class="hljs-built_in">console</span>.log([<span class="hljs-number">1</span>] &gt; <span class="hljs-literal">null</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">"foo"</span> + +<span class="hljs-string">"bar"</span>); <span class="hljs-comment">// fooNaN</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">"true"</span> == <span class="hljs-literal">true</span>); <span class="hljs-comment">// false</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-literal">false</span> == <span class="hljs-string">"false"</span>); <span class="hljs-comment">// false</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-literal">null</span> == <span class="hljs-string">""</span>); <span class="hljs-comment">// false</span>
    <span class="hljs-built_in">console</span>.log(!!<span class="hljs-string">"false"</span> == !!<span class="hljs-string">"true"</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log([<span class="hljs-string">"x"</span>] == <span class="hljs-string">"x"</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log([] + <span class="hljs-literal">null</span> + <span class="hljs-number">1</span>); <span class="hljs-comment">// null1</span>
    <span class="hljs-built_in">console</span>.log([<span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>] == [<span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>]); <span class="hljs-comment">// false</span>
    <span class="hljs-built_in">console</span>.log({} + [] + {} + [<span class="hljs-number">1</span>]); <span class="hljs-comment">// [object Object][object Object]1</span>
    <span class="hljs-built_in">console</span>.log(!+[] + [] + ![]); <span class="hljs-comment">// truefalse</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">new</span> <span class="hljs-built_in">Date</span>(<span class="hljs-number">0</span>) - <span class="hljs-number">0</span>); <span class="hljs-comment">// 0</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">new</span> <span class="hljs-built_in">Date</span>(<span class="hljs-number">0</span>) + <span class="hljs-number">0</span>); <span class="hljs-comment">// Wed Dec 31 1969 19:00:00 GMT-0500 (Peru Standard Time)0</span>
  </code></pre>
  <h3 id="operators">Operators</h3>
  <h4 id="assignment-operators">Assignment Operators</h4>
  <pre><code class="lang-js">  <span class="hljs-keyword">let</span> <span class="hljs-built_in">number</span> = <span class="hljs-number">123</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 123</span>
  
    <span class="hljs-built_in">number</span> *= <span class="hljs-number">2</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 246</span>
  
    <span class="hljs-built_in">number</span> /= <span class="hljs-number">2</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 123</span>
  
    <span class="hljs-built_in">number</span> += <span class="hljs-number">123</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 246</span>
  
    <span class="hljs-built_in">number</span> -= <span class="hljs-number">123</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 123</span>
  
    <span class="hljs-built_in">number</span> %= <span class="hljs-number">2</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 1</span>
  
    <span class="hljs-keyword">const</span> [a, b, c] = [<span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>];
    <span class="hljs-built_in">console</span>.log(a, b, c); <span class="hljs-comment">// 1 2 3</span>
  
    <span class="hljs-keyword">const</span> { a, b, c } = { a: <span class="hljs-number">1</span>, b: <span class="hljs-number">2</span>, c: <span class="hljs-number">3</span> };
    <span class="hljs-built_in">console</span>.log(a, b, c); <span class="hljs-comment">// 1 2 3</span>
  </code></pre>
  <h4 id="equality-operators">Equality Operators</h4>
  <pre><code class="lang-js">  console.log(<span class="hljs-number">1</span> == <span class="hljs-string">"1"</span>); <span class="hljs-comment">// true</span>
    console.log(<span class="hljs-number">1</span> != <span class="hljs-number">2</span>); <span class="hljs-comment">// true</span>
    console.log(<span class="hljs-number">1</span> === <span class="hljs-number">1</span>); <span class="hljs-comment">// true</span>
    console.log(<span class="hljs-number">1</span> !== <span class="hljs-string">"1"</span>); <span class="hljs-comment">// true</span>
  </code></pre>
  <h4 id="relational-operators">Relational Operators</h4>
  <pre><code class="lang-js">  <span class="hljs-built_in">console</span>.log(<span class="hljs-string">"key"</span> <span class="hljs-keyword">in</span> { <span class="hljs-attr">key</span>: <span class="hljs-string">"value"</span> }); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log({} <span class="hljs-keyword">instanceof</span> <span class="hljs-built_in">Object</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-number">1</span> &lt; <span class="hljs-number">2</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-number">2</span> &gt; <span class="hljs-number">1</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-number">1</span> &lt;= <span class="hljs-number">1</span>); <span class="hljs-comment">// true</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-number">1</span> &gt;= <span class="hljs-number">1</span>); <span class="hljs-comment">// true</span>
  </code></pre>
  <h4 id="arithmetic-operators">Arithmetic Operators</h4>
  <pre><code class="lang-js">  console.log(<span class="hljs-number">1</span> + <span class="hljs-number">1</span>); <span class="hljs-comment">// 2</span>
    console.log(<span class="hljs-number">2</span> - <span class="hljs-number">1</span>); <span class="hljs-comment">// 1</span>
    console.log(<span class="hljs-number">4</span> / <span class="hljs-number">2</span>); <span class="hljs-comment">// 2</span>
    console.log(<span class="hljs-number">2</span> * <span class="hljs-number">2</span>); <span class="hljs-comment">// 4</span>
    console.log(<span class="hljs-number">4</span> % <span class="hljs-number">2</span>); <span class="hljs-comment">// 0</span>
    console.log(<span class="hljs-number">2</span> ** <span class="hljs-number">3</span>); <span class="hljs-comment">// 8</span>
  </code></pre>
  <h4 id="unary-operators">Unary Operators</h4>
  <pre><code class="lang-js">  <span class="hljs-keyword">const</span> object = { <span class="hljs-attr">key</span>: <span class="hljs-string">"value"</span> };
    <span class="hljs-keyword">delete</span> object.key;
    <span class="hljs-built_in">console</span>.log(object); <span class="hljs-comment">// {}</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">void</span> <span class="hljs-number">123</span>); <span class="hljs-comment">// undefined</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-keyword">typeof</span> <span class="hljs-string">"Codeable"</span>); <span class="hljs-comment">// string</span>
    <span class="hljs-built_in">console</span>.log(+<span class="hljs-string">"123"</span>); <span class="hljs-comment">// 123</span>
    <span class="hljs-built_in">console</span>.log(-<span class="hljs-string">"123"</span>); <span class="hljs-comment">// -123</span>
    <span class="hljs-built_in">console</span>.log(!<span class="hljs-number">123</span>); <span class="hljs-comment">// false</span>
    <span class="hljs-built_in">console</span>.log(!!<span class="hljs-number">123</span>); <span class="hljs-comment">// false</span>
  </code></pre>
  <h4 id="increment-and-decrement">Increment and Decrement</h4>
  <pre><code class="lang-js">  <span class="hljs-keyword">let</span> <span class="hljs-built_in">number</span> = <span class="hljs-number">10</span>;
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>++); <span class="hljs-comment">// 10</span>
    <span class="hljs-built_in">console</span>.log(++<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 12</span>
    <span class="hljs-built_in">console</span>.log(<span class="hljs-built_in">number</span>--); <span class="hljs-comment">// 12</span>
    <span class="hljs-built_in">console</span>.log(--<span class="hljs-built_in">number</span>); <span class="hljs-comment">// 10</span>
  </code></pre>
  <h4 id="binary-logical-operators">Binary Logical Operators</h4>
  <pre><code class="lang-js">  console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">true</span> &amp;&amp; <span class="hljs-literal">true</span>);
    <span class="hljs-literal">true</span>;
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">true</span> &amp;&amp; <span class="hljs-literal">false</span>);
    <span class="hljs-literal">false</span>;
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">false</span> &amp;&amp; <span class="hljs-literal">true</span>);
    <span class="hljs-literal">false</span>;
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">false</span> &amp;&amp; <span class="hljs-literal">false</span>);
    <span class="hljs-literal">false</span>;
  
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">true</span> || <span class="hljs-literal">true</span>);
    <span class="hljs-literal">true</span>;
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">true</span> || <span class="hljs-literal">false</span>);
    <span class="hljs-literal">true</span>;
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">false</span> || <span class="hljs-literal">true</span>);
    <span class="hljs-literal">true</span>;
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">false</span> || <span class="hljs-literal">false</span>);
    <span class="hljs-literal">false</span>;
  </code></pre>
  <h4 id="conditional-ternary-operator">Conditional Ternary operator</h4>
  <pre><code class="lang-js">  console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">true</span> ? <span class="hljs-string">"Codeable"</span> : <span class="hljs-string">"Able"</span>); <span class="hljs-comment">// "Codeable"</span>
    console.<span class="hljs-built_in">log</span>(<span class="hljs-literal">false</span> ? <span class="hljs-string">"Codeable"</span> : <span class="hljs-string">"Able"</span>); <span class="hljs-comment">// "Able"</span>
  </code></pre>
  <h3 id="variables-constants">Variables &amp; Constants</h3>
  <pre><code class="lang-js"><span class="hljs-attribute">  var a</span> = 123;
  <span class="hljs-attribute">  let b</span> = 456;
  <span class="hljs-attribute">  const c</span> = 789;
  </code></pre>
  <h3 id="control-structures">Control Structures</h3>
  <h4 id="condition">Condition</h4>
  <pre><code class="lang-js">  <span class="hljs-keyword">if</span> (<span class="hljs-literal">true</span>) {
      <span class="hljs-regexp">//</span> <span class="hljs-keyword">do</span> <span class="hljs-keyword">this</span>
    } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span> (<span class="hljs-literal">true</span>) {
      <span class="hljs-regexp">//</span> <span class="hljs-keyword">do</span> <span class="hljs-keyword">this</span>
    } <span class="hljs-keyword">else</span> {
      <span class="hljs-regexp">//</span> <span class="hljs-keyword">do</span> <span class="hljs-keyword">this</span>
    }
  </code></pre>
  <h4 id="loops">Loops</h4>
  <h5 id="-while-"><code>while</code></h5>
  <pre><code class="lang-js">  let a = <span class="hljs-number">1</span>;
    <span class="hljs-keyword">while</span> (a &gt; <span class="hljs-number">0</span>) {
      console.<span class="hljs-built_in">log</span>(a<span class="hljs-comment">--);</span>
    }
  </code></pre>
  <h5 id="-for-"><code>for</code></h5>
  <pre><code class="lang-js">  for (let i = 0; i &lt; 10; i++) {
      console.log(i); //<span class="hljs-number"> 0 </span>1<span class="hljs-number"> 2 </span>3<span class="hljs-number"> 4 </span>5<span class="hljs-number"> 6 </span>7<span class="hljs-number"> 8 </span>9
    }
  </code></pre>
  <h5 id="-for-in-"><code>for..in</code></h5>
  <pre><code class="lang-js">  <span class="hljs-keyword">for</span> (<span class="hljs-keyword">let</span> <span class="hljs-built_in">key</span> in [<span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>]) {
      console.<span class="hljs-built_in">log</span>(<span class="hljs-built_in">key</span>); <span class="hljs-comment">// 0 1 2</span>
    }
  </code></pre>
  <h5 id="-for-of-"><code>for..of</code></h5>
  <pre><code class="lang-js">  <span class="hljs-keyword">for</span> (<span class="hljs-keyword">let</span> <span class="hljs-keyword">value</span> <span class="hljs-keyword">of</span> [<span class="hljs-number">1</span>, <span class="hljs-number">2</span>, <span class="hljs-number">3</span>]) {
      console.log(<span class="hljs-keyword">value</span>); <span class="hljs-comment">// 1 2 3</span>
    }
  </code></pre>
  <h3 id="template-literals">Template Literals</h3>
  <pre><code class="lang-js"><span class="hljs-attribute">  const name</span> = <span class="hljs-string">"Codeable"</span>;
  <span class="hljs-attribute">  const helloWorld</span> = `Hello, ${name}!`;
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-keyword">const</span> multiLine = `Hello,
  
    This <span class="hljs-keyword">is</span> multiline.`;
  </code></pre>
  <h3 id="get-element-by-id">Get Element By ID</h3>
  <pre><code class="lang-js">  <span class="hljs-keyword">const</span> $id = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"id"</span>);
    <span class="hljs-keyword">const</span> $classes = <span class="hljs-built_in">document</span>.getElementsByClassName(<span class="hljs-string">"class"</span>);
    <span class="hljs-keyword">const</span> $tags = <span class="hljs-built_in">document</span>.getElementsByTagName(<span class="hljs-string">"div"</span>);
    <span class="hljs-keyword">const</span> $element = <span class="hljs-built_in">document</span>.<span class="hljs-built_in">querySelector</span>(<span class="hljs-string">"#id"</span>);
    <span class="hljs-keyword">const</span> $elements = <span class="hljs-built_in">document</span>.<span class="hljs-built_in">querySelectorAll</span>(<span class="hljs-string">".class"</span>);
  </code></pre>
  <h3 id="handling-events">Handling Events</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleEvent</span><span class="hljs-params">(event)</span> </span>{
      event.preventDefault(); <span class="hljs-comment">// dont run the default functionality of the event (eg. avoid the submit of a form)</span>
      <span class="hljs-keyword">const</span> $target = event.target; <span class="hljs-comment">// get the target of the event (the element who triggered it)</span>
      <span class="hljs-keyword">const</span> elements = $target.elements; <span class="hljs-comment">// get the elements inside the target, they are listed as array or with their names</span>
    }
  
    $id.addEventListener(<span class="hljs-string">"event"</span>, handleEvent);
  </code></pre>
  <h3 id="overwriting-the-content-of-an-element">Overwriting the Content of an Element</h3>
  <pre><code class="lang-js">  $element.innerText = <span class="hljs-string">"value"</span>; <span class="hljs-regexp">//</span> only support strings, <span class="hljs-keyword">if</span> you write HTML it will be displayed as is
    $element.innerHTML = <span class="hljs-string">"&lt;strong&gt;value&lt;/strong&gt;"</span>; <span class="hljs-regexp">//</span> supports HTML <span class="hljs-keyword">and</span> plain text
  </code></pre>
  ',
  tag: tag2,
  lesson: lesson34,
  section: 'main',
)

massign12 = Sublesson.create(
  title: 'Calculator',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Create a calculator application using HTML forms for the input and JavaScript to calculate the results.</p>
  <p>  It should support:</p>
  <ul>
  <li>Sum</li>
  <li>Rest</li>
  <li>Multiply</li>
  <li>Divide</li>
  <li>Square root</li>
  <li>Power</li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson34,
  section: 'main',
)

Sublesson.create(
  title: 'Aditional Information',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://developer.mozilla.org/en-US/docs/Glossary/Primitive">Primitives</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures">Data Types</a></li>
  <li><a href="https://yeisondaza.com/entendiendo-los-tipos-en-javascript">Entendiendo los tipos en JavaScript</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions">Functions</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators">Operators</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Grammar_and_types">Variables &amp; Constants</a></li>
  <li><a href="https://www.youtube.com/watch?v=sjyJBL5fkp8"><code>var</code>, <code>let</code> and <code>const</code></a> (video)</li>
  <li><a href="https://yeisondaza.com/var-let-y-const-en-javascript"><code>var</code>, <code>let</code> y <code>const</code> en JavaScript</a></li>
  <li><a href="https://yeisondaza.com/entendiendo-scopes-de-variables-en-javascript">Entendiendo scopes de variables en JavaScript</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar#Comments">Comments</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference#Control_flow">Control structures</a></li>
  <li><a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment">Destructuring</a></li>
  <li><a href="https://www.youtube.com/watch?v=PB_d3uBkQPs">Destructuring</a> (video)</li>
  <li><a href="https://yeisondaza.com/entendiendo-la-asignacion-por-destructuring-en-javascript">Entendiendo la asignación por destructuring en JavaScript</a></li>
  <li><a href="https://yeisondaza.com/entendiendo-las-comparaciones-en-javascript">Entendiendo las comparaciones en JavaScript</a></li>
  <li><a href="https://dorey.github.io/JavaScript-Equality-Table/">JavaScript Equality Table</a></li>
  <li><a href="https://medium.freecodecamp.org/js-type-coercion-explained-27ba3d9a2839">JavaScript type coercion explained</a></li>
  </ul>
  ',
  tag: tag5,
  lesson: lesson34,
  section: 'extra',
)

Sublesson.create(
  title: 'What is a module?',
  content: '<h2 id="topics">Topics</h2>
  <ul>
  <li>Modules in JavaScript</li>
  <li>JavaScript Ecosystem</li>
  <li>npm vs yarn</li>
  <li>Installing a module</li>
  <li>Using a module</li>
  <li>Babel</li>
  <li>Module Bundlers<ul>
  <li>Parcel</li>
  <li>webpack</li>
  <li>microbundle</li>
  </ul>
  </li>
  <li>ESLint</li>
  <li><p>Prettier</p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What&#39;s a module?</p>
  </li>
  <li>What module systems exists on the JavaScript ecosystem?</li>
  <li>How do you export code in a module? How do you import it?</li>
  <li>What&#39;s a package?</li>
  <li>What&#39;s a package manager?</li>
  <li>How do you install and use a package?</li>
  <li>What&#39;s a build tool? What do we mean by build?</li>
  <li>What&#39;s Babel? How does it help us?</li>
  <li>What&#39;s a bundler? What does it does?</li>
  <li>What&#39;s webpack?</li>
  <li>What&#39;s Parcel? How is it comparable to webpack?</li>
  <li>What is a linter?</li>
  <li>What is ESLint? What is Stylelint?</li>
  <li>What is Prettier?</li>
  <li>What other build tools exists?</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson41,
  section: 'main',
)

Sublesson.create(
  title: 'Creating a Module, package.json',
  content: '<h2 id="workshop">Workshop</h2>
  <h3 id="the-package-json">The package.json</h3>
  <p>  First initialize the project:</p>
  <pre><code class="lang-bash">  <span class="hljs-symbol">$</span> yarn init --<span class="hljs-keyword">yes</span>
  </code></pre>
  <pre><code class="lang-json">  {
      <span class="hljs-attr">"name"</span>: <span class="hljs-string">"@sergiodxa/my-module"</span>,
      <span class="hljs-attr">"version"</span>: <span class="hljs-string">"1.0.0"</span>,
      <span class="hljs-attr">"description"</span>: <span class="hljs-string">"My super cool module"</span>,
      <span class="hljs-attr">"main"</span>: <span class="hljs-string">"dist/index.js"</span>,
      <span class="hljs-attr">"umd:main"</span>: <span class="hljs-string">"dist/index.umd.js"</span>,
      <span class="hljs-attr">"module"</span>: <span class="hljs-string">"dist/index.mjs"</span>,
      <span class="hljs-attr">"source"</span>: <span class="hljs-string">"src/index.js"</span>,
      <span class="hljs-attr">"scripts"</span>: {},
      <span class="hljs-attr">"keywords"</span>: [<span class="hljs-string">"codeable"</span>],
      <span class="hljs-attr">"author"</span>: <span class="hljs-string">"Sergio Xalambrí &lt;hello@sergiodxa.com&gt; (https://sergiodxa.com)"</span>,
      <span class="hljs-attr">"license"</span>: <span class="hljs-string">"MIT"</span>,
      <span class="hljs-attr">"dependencies"</span>: {},
      <span class="hljs-attr">"devDependencies"</span>: {}
    }
  </code></pre>
  <h3 id="creating-a-module">Creating a Module</h3>
  <h4 id="using-cjs">Using CJS</h4>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">hello</span>(<span class="hljs-params">name</span>) </span>{
      <span class="hljs-keyword">return</span> <span class="hljs-string">`Hello, <span class="hljs-subst">${name}</span>!`</span>;
    }
  
    <span class="hljs-built_in">module</span>.exports = hello;
  </code></pre>
  <h4 id="using-esm">Using ESM</h4>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">hello</span>(<span class="hljs-params">name</span>) </span>{
      <span class="hljs-keyword">return</span> <span class="hljs-string">`Hello, <span class="hljs-subst">${name}</span>!`</span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> hello;
  </code></pre>
  <h3 id="importing-a-module">Importing a Module</h3>
  <h4 id="using-cjs">Using CJS</h4>
  <pre><code class="lang-js">  <span class="hljs-keyword">const</span> hello = <span class="hljs-built_in">require</span>(<span class="hljs-string">"./hello"</span>);
    <span class="hljs-built_in">console</span>.log(hello(<span class="hljs-string">"Codeable"</span>));
  </code></pre>
  <h4 id="using-esm">Using ESM</h4>
  <pre><code class="lang-js">  <span class="hljs-keyword">import</span> hello <span class="hljs-keyword">from</span> <span class="hljs-string">"./hello"</span>;
    <span class="hljs-built_in">console</span>.log(hello(<span class="hljs-string">"Codeable"</span>));
  </code></pre>
  <h3 id="installing-a-module-from-npm">Installing a Module from npm</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> chalk
  </span>  <span class="hljs-comment"># $ npm install chalk</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// import chalk from "chalk"; // Using ESM</span>
    <span class="hljs-keyword">const</span> chalk = <span class="hljs-built_in">require</span>(<span class="hljs-string">"chalk"</span>); <span class="hljs-comment">// Using CJS</span>
  
    <span class="hljs-built_in">console</span>.log(chalk.red(<span class="hljs-string">"Hello world!"</span>));
  </code></pre>
  <h3 id="using-parcel">Using Parcel</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> -D parcel-bundler</span>
  </code></pre>
  <pre><code class="lang-html">  <span class="hljs-comment">&lt;!-- index.html --&gt;</span>
    <span class="hljs-meta">&lt;!DOCTYPE html&gt;</span>
    <span class="hljs-tag">&lt;<span class="hljs-name">html</span> <span class="hljs-attr">lang</span>=<span class="hljs-string">"en"</span>&gt;</span>
      <span class="hljs-tag">&lt;<span class="hljs-name">head</span>&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">meta</span> <span class="hljs-attr">charset</span>=<span class="hljs-string">"UTF-8"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">meta</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"viewport"</span> <span class="hljs-attr">content</span>=<span class="hljs-string">"width=device-width, initial-scale=1.0"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">meta</span> <span class="hljs-attr">http-equiv</span>=<span class="hljs-string">"X-UA-Compatible"</span> <span class="hljs-attr">content</span>=<span class="hljs-string">"ie=edge"</span> /&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">title</span>&gt;</span>Document<span class="hljs-tag">&lt;/<span class="hljs-name">title</span>&gt;</span>
      <span class="hljs-tag">&lt;/<span class="hljs-name">head</span>&gt;</span>
      <span class="hljs-tag">&lt;<span class="hljs-name">body</span>&gt;</span>
        <span class="hljs-tag">&lt;<span class="hljs-name">script</span> <span class="hljs-attr">src</span>=<span class="hljs-string">"./main.js"</span>&gt;</span><span class="undefined"></span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span>
      <span class="hljs-tag">&lt;/<span class="hljs-name">body</span>&gt;</span>
    <span class="hljs-tag">&lt;/<span class="hljs-name">html</span>&gt;</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// hello.js</span>
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">hello</span>(<span class="hljs-params">name</span>) </span>{
      <span class="hljs-keyword">return</span> <span class="hljs-string">`Hello, <span class="hljs-subst">${name}</span>!`</span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> hello;
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// main.js</span>
    <span class="hljs-keyword">import</span> hello <span class="hljs-keyword">from</span> <span class="hljs-string">"./hello"</span>;
  
    <span class="hljs-built_in">console</span>.log(hello(<span class="hljs-string">"Codeable"</span>));
  </code></pre>
  <p>  Run the command</p>
  <pre><code class="lang-bash">  $ yarn parcel <span class="hljs-keyword">index</span>.html
  </code></pre>
  <h3 id="using-microbundle">Using microbundle</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> -D microbundle</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// main.js</span>
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">hello</span>(<span class="hljs-params">name</span>) </span>{
      <span class="hljs-keyword">return</span> <span class="hljs-string">`Hello, <span class="hljs-subst">${name}</span>!`</span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> hello;
  </code></pre>
  <p>  Run the command</p>
  <pre><code class="lang-bash">  <span class="hljs-variable">$ </span>yarn microbundle
  </code></pre>
  <h3 id="eslint">ESLint</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> -D eslint</span>
  </code></pre>
  <pre><code class="lang-bash">  $ yarn eslint <span class="hljs-comment">--init</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// main.js</span>
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">hello</span>(<span class="hljs-params">name</span>) </span>{
      <span class="hljs-keyword">return</span> <span class="hljs-string">`Hello, <span class="hljs-subst">${name}</span>!`</span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> hello;
  </code></pre>
  <pre><code class="lang-bash">  <span class="hljs-variable">$ </span>yarn eslint main.js
  </code></pre>
  <h3 id="prettier">Prettier</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> -D prettier</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">hello</span>(<span class="hljs-params">name</span>) </span>{
      <span class="hljs-keyword">return</span> <span class="hljs-string">`Hello, <span class="hljs-subst">${name}</span>!`</span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> hello;
  </code></pre>
  <pre><code class="lang-bash">  $ yarn prettier <span class="hljs-comment">--write main.js</span>
  </code></pre>
  ',
  tag: tag2,
  lesson: lesson41,
  section: 'main',
)

massign13 = Sublesson.create(
  title: 'Create and publish a module to NPM Registry',
  content: '<p>Create and publish a module to the npm registry. The module could be as complex or simple as you want. Be sure to:</p>
  <ul>
  <li>Create a complete <code>package.json</code>.</li>
  <li>Use microbundle to support multiple module targets.</li>
  <li>Create an example folder with an usage example.</li>
  <li>Document the API of your module in the README.</li>
  </ul>
  ',
  tag: tag3,
  lesson: lesson41,
  section: 'main',
)

Sublesson.create(
  title: 'Extra information',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="http://npmjs.com/">npm</a></li>
  <li><a href="https://yarnpkg.com/">yarn</a></li>
  <li><a href="https://babeljs.io/">Babel</a></li>
  <li><a href="https://webpack.js.org/">webpack</a></li>
  <li><a href="https://parceljs.org/">Parcel</a></li>
  <li><a href="https://github.com/developit/microbundle">Microbundle</a></li>
  <li><a href="https://prettier.io/">Prettier</a></li>
  <li><a href="https://eslint.org/">ESLint</a></li>
  <li><a href="https://platzi.com/blog/manejo-de-dependencias-javascript-con-yarn/">Manejo de dependencias JavaScript con Yarn</a></li>
  <li><a href="https://platzi.com/blog/que-es-babel/">¿Qué es y para qué sirve Babel?</a></li>
  <li><a href="https://sergiodxa.com/articles/crear-modulo-npm/">Cómo crear y publicar un módulo para npm</a></li>
  </ul>
  ',
  tag: tag4,
  lesson: lesson41,
  section: 'extra',
)

Sublesson.create(
  title: 'Topics React, State & Effects',
  content: '<h1 id="react-state-effects">React, State &amp; Effects</h1>
  <h2 id="topics">Topics</h2>
  <ul>
  <li>Create React App</li>
  <li>How to create a component</li>
  <li>State Hook</li>
  <li>Effect Hook</li>
  <li>Handling Events</li>
  <li>Lifting State Up</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson42,
  section: 'main',
)

Sublesson.create(
  title: 'Starting a React Project',
  content: '<h2 id="workshop">Workshop</h2>
  <h3 id="starting-a-react-project">Starting a React Project</h3>
  <pre><code class="lang-bash">  $ <span class="hljs-string">npx </span><span class="hljs-built_in">create-react-app</span> <span class="hljs-string">my-app</span>
  </code></pre>
  <h3 id="running-your-project">Running Your Project</h3>
  <pre><code class="lang-bash">  $ <span class="hljs-built_in">cd</span> my-app
    $ yarn <span class="hljs-built_in">start</span>
  </code></pre>
  <h3 id="rendering-an-element-with-react">Rendering an Element with React</h3>
  <pre><code class="lang-js">  <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> { render } <span class="hljs-keyword">from</span> <span class="hljs-string">"react-dom"</span>;
  
    <span class="hljs-keyword">const</span> $root = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"root"</span>);
    render(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>Codeable<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>, $root);
  </code></pre>
  <h3 id="creating-a-component">Creating a Component</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>Codeable<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>;
    }
  
    <span class="hljs-keyword">const</span> $root = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"root"</span>);
    render(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">Codeable</span> /&gt;</span>, $root);</span>
  </code></pre>
  <h3 id="running-an-effect">Running an Effect</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-built_in">document</span>.title = <span class="hljs-string">"Codeable"</span>;
      });
  
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>Codeable<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>;
    }
  </code></pre>
  <h3 id="handling-events">Handling Events</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-built_in">document</span>.title = <span class="hljs-string">"Codeable"</span>;
      });
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        <span class="hljs-built_in">console</span>.log(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">main</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>Codeable<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">defaultValue</span>=<span class="hljs-string">"Codeable"</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>
        <span class="hljs-tag">&lt;/<span class="hljs-name">main</span>&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id="using-state">Using State</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-built_in">document</span>.title = <span class="hljs-string">"Codeable"</span>;
      });
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        setTitle(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">main</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>Codeable<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">{title}</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>
        <span class="hljs-tag">&lt;/<span class="hljs-name">main</span>&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id="using-state-effect-together">Using State &amp; Effect together</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-built_in">document</span>.title = title;
      });
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        setTitle(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">main</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>{title}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">{title}</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>
        <span class="hljs-tag">&lt;/<span class="hljs-name">main</span>&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id="adding-a-second-state-effect">Adding a Second State &amp; Effect</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = title;
        }
      });
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> setIsWriting(<span class="hljs-literal">false</span>), <span class="hljs-number">1000</span>);
      });
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        setIsWriting(<span class="hljs-literal">true</span>);
        setTitle(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">main</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>{title}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">{title}</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>
          User is writing: {isWriting.toString()}
        <span class="hljs-tag">&lt;/<span class="hljs-name">main</span>&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id="adding-an-effect-dependencies-array">Adding an Effect Dependencies Array</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = title;
        }
      }, [isWriting, title]);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> setIsWriting(<span class="hljs-literal">false</span>), <span class="hljs-number">1000</span>);
      }, [isWriting]);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        setIsWriting(<span class="hljs-literal">true</span>);
        setTitle(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">main</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>{title}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">{title}</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>
          User is writing: {isWriting.toString()}
        <span class="hljs-tag">&lt;/<span class="hljs-name">main</span>&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id="clearing-an-effect">Clearing an Effect</h3>
  <pre><code class="lang-js">  <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = title;
        }
      }, [isWriting, title]);
  
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">const</span> timer = setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> setIsWriting(<span class="hljs-literal">false</span>), <span class="hljs-number">1000</span>);
        <span class="hljs-keyword">return</span> <span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> clearTimeout(timer);
      }, [isWriting]);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        setIsWriting(<span class="hljs-literal">true</span>);
        setTitle(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">main</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>{title}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span>
          <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">{title}</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>
          User is writing: {isWriting.toString()}
        <span class="hljs-tag">&lt;/<span class="hljs-name">main</span>&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id="lifting-state-up">Lifting State Up</h3>
  <p>  <em>title.js</em></p>
  <pre><code class="lang-js">  <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Title</span>(<span class="hljs-params">{ value, isWriting }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = value;
        }
      }, [isWriting, value]);
  
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span>&gt;</span>{value}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> Title;
  </code></pre>
  <p>  <em>input.js</em></p>
  <pre><code class="lang-js">  <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Input</span>(<span class="hljs-params">{ value, onWrite }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">const</span> timer = setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> onWrite(value), <span class="hljs-number">1000</span>);
        <span class="hljs-keyword">return</span> <span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> clearTimeout(timer);
      }, [value, onWrite]);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        onWrite(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">{value}</span> <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span> /&gt;</span>;
    }
  
    export default Input;</span>
  </code></pre>
  <p>  <em>codeable.js</em></p>
  <pre><code class="lang-js">  import React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
  
    import Title <span class="hljs-keyword">from</span> <span class="hljs-string">"./title"</span>;
    import Input <span class="hljs-keyword">from</span> <span class="hljs-string">"./input"</span>;
  
    <span class="hljs-function">function <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      <span class="hljs-function">function <span class="hljs-title">handleWrite</span>(<span class="hljs-params"><span class="hljs-keyword">value</span></span>) </span>{
        setIsWriting(<span class="hljs-keyword">value</span> !== title);
        setTitle(<span class="hljs-keyword">value</span>);
      }
  
      <span class="hljs-keyword">return</span> (
        &lt;main&gt;
          &lt;Title <span class="hljs-keyword">value</span>={title} isWriting={isWriting} /&gt;
          &lt;Input <span class="hljs-keyword">value</span>={title} onWrite={handleWrite} /&gt;
          User <span class="hljs-keyword">is</span> writing: {isWriting.toString()}
        &lt;/main&gt;
      );
    }
  
    export <span class="hljs-keyword">default</span> Codeable;
  </code></pre>
  ',
  tag: tag2,
  lesson: lesson42,
  section: 'main',
)

massign14 = Sublesson.create(
  title: 'Geolocation with Google Maps',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Ask the user for their geolocation and render a map with a pin in it, keep listening for geolocation changes to update the pin in the map. Use <a href="https://www.npmjs.com/package/react-leaflet">React Leaflet</a> to show the map.</p>
  <p>  <em>Optional</em>: Use a Google Maps component from npm to show the map.</p>
  ',
  tag: tag3,
  lesson: lesson42,
  section: 'main',
)

Sublesson.create(
  title: 'More Information',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://facebook.github.io/create-react-app/">Create React App</a></li>
  <li><a href="https://reactjs.org/docs/hello-world.html">React Hello World</a></li>
  <li><a href="https://reactjs.org/docs/introducing-jsx.html">Introducing JSX</a></li>
  <li><a href="https://reactjs.org/docs/rendering-elements.html">Rendering Elements</a></li>
  <li><a href="https://reactjs.org/docs/components-and-props.html">Components and Props</a></li>
  <li><a href="https://reactjs.org/docs/hooks-overview.html">Hooks at a Glance</a></li>
  <li><a href="https://reactjs.org/docs/hooks-state.html">Using the State Hook</a></li>
  <li><a href="https://reactjs.org/docs/hooks-effect.html">Using the Effect Hook</a></li>
  <li><a href="https://reactjs.org/docs/hooks-reference.html#usereducer">Using the Reducer Hook</a></li>
  <li><a href="https://reactjs.org/docs/handling-events.html">Handling Events</a></li>
  <li><a href="https://reactjs.org/docs/lifting-state-up.html">Lifting State Up</a></li>
  <li><a href="https://reactjs.org/docs/thinking-in-react.html">Thinking in React</a></li>
  <li><a href="https://kentcdodds.com/blog/application-state-management-with-react">Application State Management with React</a></li>
  <li><a href="https://kentcdodds.com/blog/the-state-reducer-pattern-with-react-hooks">The State Reducer Pattern with React Hooks</a></li>
  <li><a href="https://kentcdodds.com/blog/should-i-usestate-or-usereducer">Should I useState or useReducer?</a></li>
  <li><a href="https://kentcdodds.com/blog/useeffect-vs-uselayouteffect">useEffect vs useLayoutEffect</a></li>
  <li><a href="https://github.com/kentcdodds/ama/issues/399#issuecomment-401885233">When to break up a component into multiple components</a></li>
  <li><a href="https://www.youtube.com/watch?v=9sc8Pyc51uU">React.js Conf 2015 - Data fetching for React applications at Facebook</a> (video)</li>
  <li><a href="https://www.youtube.com/watch?v=eNC0mRYGWgc">React.js Conf 2015 - Beyond the DOM: How Netflix plans to enhance your television experience</a> (video)</li>
  <li><a href="https://www.youtube.com/watch?v=-VC7o6wZ_a8">Ken Wheeler - Using React for Anything but Website - React Conf 2017</a> (video)</li>
  <li><a href="https://www.youtube.com/watch?v=4M1xQzAbesY">Dustan Kasten - React Everything, Render Everywhere - React Conf 2017</a> (video)</li>
  </ul>
  ',
  tag: tag4,
  lesson: lesson42,
  section: 'extra',
)

Sublesson.create(
  title: 'List & Forms',
  content: '<h1 id="list-forms">List &amp; Forms</h1>
  <h2 id="topics">Topics</h2>
  <ul>
  <li>Conditional rendering</li>
  <li>How to render lists</li>
  <li>The <code>key</code> of the lists</li>
  <li>Uncontrolled Components</li>
  <li>Controlled Components</li>
  <li>Controllable Components</li>
  <li>Textarea</li>
  <li>Select</li>
  <li>File</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson43,
  section: 'main',
)

Sublesson.create(
  title: 'Practice Time',
  content: "<h2 id='workshop'>Workshop</h2>
  <h3 id='conditional-rendering'>Conditional Rendering</h3>
  <h4 id='using-a-normal-if-'>Using a Normal <code>If</code></h4>
  <pre><code class='lang-js'>  <span class='hljs-keyword'>const</span> Spinner = () =&gt; &lt;strong&gt;Loading...&lt;/strong&gt;;
  
    <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>MyComponent</span><span class='hljs-params'>({ isLoading })</span> </span>{
      <span class='hljs-keyword'>if</span> (isLoading) <span class='hljs-keyword'>return</span> &lt;Spinner /&gt;;
      <span class='hljs-keyword'>return</span> &lt;main&gt;This <span class='hljs-keyword'>is</span> the real content&lt;/main&gt;;
    }
  </code></pre>
  <h4 id='switching-only-content-using-ternaries'>Switching Only Content Using Ternaries</h4>
  <pre><code class='lang-js'>  <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>MyComponent</span>(<span class='hljs-params'>{ isActive }</span>) </span>{
      <span class='hljs-keyword'>return</span> (
        <span class='xml'><span class='hljs-tag'>&lt;<span class='hljs-name'>main</span>&gt;</span>
          I'm <span class='hljs-tag'>&lt;<span class='hljs-name'>strong</span>&gt;</span>{isActive ? 'active' : 'inactive'}<span class='hljs-tag'>&lt;/<span class='hljs-name'>strong</span>&gt;</span>
        <span class='hljs-tag'>&lt;/<span class='hljs-name'>main</span>&gt;</span></span>
      );
    }
  </code></pre>
  <h4 id='switching-elements-tree-using-ternaries'>Switching Elements Tree Using Ternaries</h4>
  <pre><code class='lang-js'>  const Spinner = () =&gt; <span class='hljs-tag'>&lt;<span class='hljs-name'>strong</span>&gt;</span>Loading...<span class='hljs-tag'>&lt;/<span class='hljs-name'>strong</span>&gt;</span>;
  
    function MyComponent({ isLoading }) {
      return (
        <span class='hljs-tag'>&lt;<span class='hljs-name'>main</span>&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>h2</span>&gt;</span>This is my app<span class='hljs-tag'>&lt;/<span class='hljs-name'>h2</span>&gt;</span>
          {isLoading ? <span class='hljs-tag'>&lt;<span class='hljs-name'>Spinner</span> /&gt;</span> : <span class='hljs-tag'>&lt;<span class='hljs-name'>article</span>&gt;</span>This is the real content<span class='hljs-tag'>&lt;/<span class='hljs-name'>article</span>&gt;</span>}
        <span class='hljs-tag'>&lt;/<span class='hljs-name'>main</span>&gt;</span>
      );
    }
  </code></pre>
  <h4 id='rendering-an-element-or-null'>Rendering an Element or Null</h4>
  <h5 id='using-a-ternary'>Using a Ternary</h5>
  <pre><code class='lang-js'>  const Spinner = () =&gt; &lt;strong&gt;Loading...&lt;/strong&gt;;
  
    <span class='hljs-keyword'>function</span> <span class='hljs-title'>MyComponent</span>({ <span class='hljs-keyword'>is</span>Loading }) {
      <span class='hljs-keyword'>return</span> (
        &lt;main&gt;
          &lt;h2&gt;This <span class='hljs-keyword'>is</span> my app&lt;/h2&gt;
          {isLoading ? &lt;Spinner /&gt; : <span class='hljs-keyword'><span class='hljs-keyword'>null</span></span>}
          &lt;article&gt;This <span class='hljs-keyword'>is</span> the real content&lt;/article&gt;
        &lt;/main&gt;
      );
    }
  </code></pre>
  <h5 id='using-an-implicit-null'>Using an Implicit Null</h5>
  <pre><code class='lang-js'>  const Spinner = () =&gt; <span class='hljs-tag'>&lt;<span class='hljs-name'>strong</span>&gt;</span>Loading...<span class='hljs-tag'>&lt;/<span class='hljs-name'>strong</span>&gt;</span>;
  
    function MyComponent({ isLoading }) {
      return (
        <span class='hljs-tag'>&lt;<span class='hljs-name'>main</span>&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>h2</span>&gt;</span>This is my app<span class='hljs-tag'>&lt;/<span class='hljs-name'>h2</span>&gt;</span>
          {isLoading &amp;&amp; <span class='hljs-tag'>&lt;<span class='hljs-name'>Spinner</span> /&gt;</span>}
          <span class='hljs-tag'>&lt;<span class='hljs-name'>article</span>&gt;</span>This is the real content<span class='hljs-tag'>&lt;/<span class='hljs-name'>article</span>&gt;</span>
        <span class='hljs-tag'>&lt;/<span class='hljs-name'>main</span>&gt;</span>
      );
    }
  </code></pre>
  <h3 id='rendering-lists'>Rendering Lists</h3>
  <pre><code class='lang-js'>  <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>List</span>(<span class='hljs-params'></span>) </span>{
      <span class='hljs-keyword'>const</span> messages = [
        { <span class='hljs-attr'>content</span>: <span class='hljs-string'>'Lorem'</span>, <span class='hljs-attr'>id</span>: <span class='hljs-number'>1</span> },
        { <span class='hljs-attr'>content</span>: <span class='hljs-string'>'Ipsum'</span>, <span class='hljs-attr'>id</span>: <span class='hljs-number'>2</span> },
        { <span class='hljs-attr'>content</span>: <span class='hljs-string'>'dolor'</span>, <span class='hljs-attr'>id</span>: <span class='hljs-number'>3</span> },
        { <span class='hljs-attr'>content</span>: <span class='hljs-string'>'Sit'</span>, <span class='hljs-attr'>id</span>: <span class='hljs-number'>4</span> },
        { <span class='hljs-attr'>content</span>: <span class='hljs-string'>'Amet'</span>, <span class='hljs-attr'>id</span>: <span class='hljs-number'>5</span> }
      ];
  
      <span class='hljs-keyword'>return</span> (
        <span class='xml'><span class='hljs-tag'>&lt;<span class='hljs-name'>ul</span>&gt;</span>
          {messages
            .filter(({ content }) =&gt; content[0] !== content[0].toLowerCase())
            .map(message =&gt; (
              <span class='hljs-tag'>&lt;<span class='hljs-name'>li</span> <span class='hljs-attr'>key</span>=<span class='hljs-string'>{message.id}</span>&gt;</span>{message.content}<span class='hljs-tag'>&lt;/<span class='hljs-name'>li</span>&gt;</span>
            ))}
        <span class='hljs-tag'>&lt;/<span class='hljs-name'>ul</span>&gt;</span></span>
      );
    }
  </code></pre>
  <h3 id='uncontrolled-component'>Uncontrolled Component</h3>
  <pre><code class='lang-js'>  <span class='hljs-function'><span class='hljs-keyword'>function</span></span> <span class='hljs-keyword'>Form</span>() {
      const [message, setMessage] = React.useState(<span class='hljs-string'>''</span>);
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span></span> handleSubmit(event) {
        event.preventDefault();
        setMessage(event.<span class='hljs-keyword'>target</span>.elements.message.<span class='hljs-keyword'>value</span>);
      }
  
      <span class='hljs-keyword'>return</span> (
        &lt;&gt;
          &lt;p&gt;{message}&lt;/p&gt;
          &lt;<span class='hljs-keyword'>form</span> onSubmit={handleSubmit}&gt;
            &lt;input <span class='hljs-keyword'>name</span>=<span class='hljs-string'>'message'</span> <span class='hljs-keyword'>type</span>=<span class='hljs-string'>'text'</span> /&gt;
          &lt;/<span class='hljs-keyword'>form</span>&gt;
        &lt;/&gt;
      );
    }
  </code></pre>
  <h3 id='controlled-component'>Controlled Component</h3>
  <pre><code class='lang-js'>  <span class='hljs-function'><span class='hljs-keyword'>function</span></span> <span class='hljs-keyword'>Form</span>() {
      const [message, setMessage] = React.useState(<span class='hljs-string'>''</span>);
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span></span> handleSubmit(event) {
        event.preventDefault();
      }
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span></span> handleChange(event) {
        setMessage(event.<span class='hljs-keyword'>target</span>.<span class='hljs-keyword'>value</span>);
      }
  
      <span class='hljs-keyword'>return</span> (
        &lt;&gt;
          &lt;p&gt;{message}&lt;/p&gt;
          &lt;<span class='hljs-keyword'>form</span> onSubmit={handleSubmit}&gt;
            &lt;input
              <span class='hljs-keyword'>name</span>=<span class='hljs-string'>'message'</span>
              <span class='hljs-keyword'>type</span>=<span class='hljs-string'>'text'</span>
              onChange={handleChange}
              <span class='hljs-keyword'>value</span>={message}
            /&gt;
          &lt;/<span class='hljs-keyword'>form</span>&gt;
        &lt;/&gt;
      );
    }
  </code></pre>
  <h4 id='adding-a-simple-validation'>Adding a Simple Validation</h4>
  <pre><code class='lang-js'>  <span class='hljs-function'>function <span class='hljs-title'>Form</span>(<span class='hljs-params'></span>) </span>{
      <span class='hljs-keyword'>const</span> [message, setMessage] = React.useState(<span class='hljs-string'>''</span>);
      <span class='hljs-keyword'>const</span> [error, setError] = React.useState(<span class='hljs-literal'>null</span>);
  
      <span class='hljs-function'>function <span class='hljs-title'>handleSubmit</span>(<span class='hljs-params'><span class='hljs-keyword'>event</span></span>) </span>{
        <span class='hljs-keyword'>event</span>.preventDefault();
      }
  
      <span class='hljs-function'>function <span class='hljs-title'>handleChange</span>(<span class='hljs-params'><span class='hljs-keyword'>event</span></span>) </span>{
        <span class='hljs-keyword'>const</span> <span class='hljs-keyword'>value</span> = <span class='hljs-keyword'>event</span>.target.<span class='hljs-keyword'>value</span>;
        <span class='hljs-keyword'>if</span> (<span class='hljs-keyword'>value</span>.includes(<span class='hljs-string'>'_'</span>)) {
          setError(<span class='hljs-string'>'You cannot use an underscore'</span>);
        } <span class='hljs-keyword'>else</span> {
          setError(<span class='hljs-literal'>null</span>);
          setMessage(<span class='hljs-keyword'>value</span>);
        }
      }
  
      <span class='hljs-keyword'>return</span> (
        &lt;&gt;
          &lt;p&gt;{message}&lt;/p&gt;
          &lt;form onSubmit={handleSubmit}&gt;
            &lt;input
              id=<span class='hljs-string'>'message'</span>
              name=<span class='hljs-string'>'message'</span>
              type=<span class='hljs-string'>'text'</span>
              onChange={handleChange}
              <span class='hljs-keyword'>value</span>={message}
            /&gt;
            {error &amp;&amp; (
              &lt;label style={{ color: <span class='hljs-string'>'red'</span> }} htmlFor=<span class='hljs-string'>'message'</span>&gt;
                {error}
              &lt;/label&gt;
            )}
          &lt;/form&gt;
        &lt;/&gt;
      );
    }
  </code></pre>
  <h4 id='controlling-a-textarea'>Controlling a Textarea</h4>
  <pre><code class='lang-js'>  <span class='hljs-function'>function <span class='hljs-title'>Form</span>(<span class='hljs-params'></span>) </span>{
      <span class='hljs-keyword'>const</span> [message, setMessage] = React.useState(<span class='hljs-string'>''</span>);
      <span class='hljs-keyword'>const</span> [error, setError] = React.useState(<span class='hljs-literal'>null</span>);
  
      <span class='hljs-function'>function <span class='hljs-title'>handleSubmit</span>(<span class='hljs-params'><span class='hljs-keyword'>event</span></span>) </span>{
        <span class='hljs-keyword'>event</span>.preventDefault();
      }
  
      <span class='hljs-function'>function <span class='hljs-title'>handleChange</span>(<span class='hljs-params'><span class='hljs-keyword'>event</span></span>) </span>{
        <span class='hljs-keyword'>const</span> <span class='hljs-keyword'>value</span> = <span class='hljs-keyword'>event</span>.target.<span class='hljs-keyword'>value</span>;
        <span class='hljs-keyword'>if</span> (<span class='hljs-keyword'>value</span>.includes(<span class='hljs-string'>'_'</span>)) {
          setError(<span class='hljs-string'>'You cannot use an underscore'</span>);
        } <span class='hljs-keyword'>else</span> {
          setError(<span class='hljs-literal'>null</span>);
          setMessage(<span class='hljs-keyword'>value</span>);
        }
      }
  
      <span class='hljs-keyword'>return</span> (
        &lt;&gt;
          &lt;p&gt;{message}&lt;/p&gt;
          &lt;form onSubmit={handleSubmit}&gt;
            &lt;textarea
              id=<span class='hljs-string'>'message'</span>
              name=<span class='hljs-string'>'message'</span>
              onChange={handleChange}
              <span class='hljs-keyword'>value</span>={message}
            /&gt;
            {error &amp;&amp; (
              &lt;label style={{ color: <span class='hljs-string'>'red'</span> }} htmlFor=<span class='hljs-string'>'message'</span>&gt;
                {error}
              &lt;/label&gt;
            )}
          &lt;/form&gt;
        &lt;/&gt;
      );
    }
  </code></pre>
  <h4 id='controlling-a-select'>Controlling a Select</h4>
  <pre><code class='lang-js'>  <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>Form</span>(<span class='hljs-params'></span>) </span>{
      <span class='hljs-keyword'>const</span> [option, setOption] = React.useState(<span class='hljs-literal'>null</span>);
      <span class='hljs-keyword'>const</span> [error, setError] = React.useState(<span class='hljs-literal'>null</span>);
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>handleSubmit</span>(<span class='hljs-params'>event</span>) </span>{
        event.preventDefault();
      }
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>handleChange</span>(<span class='hljs-params'>event</span>) </span>{
        setOption(event.target.value);
      }
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>handleResetClick</span>(<span class='hljs-params'></span>) </span>{
        setOption(<span class='hljs-literal'>null</span>);
      }
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>handlePCClick</span>(<span class='hljs-params'></span>) </span>{
        setOption(<span class='hljs-string'>'valve'</span>);
      }
  
      <span class='hljs-keyword'>return</span> (
        <span class='xml'><span class='hljs-tag'>&lt;&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>p</span>&gt;</span>{option}<span class='hljs-tag'>&lt;/<span class='hljs-name'>p</span>&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>form</span> <span class='hljs-attr'>onSubmit</span>=<span class='hljs-string'>{handleSubmit}</span>&gt;</span>
            <span class='hljs-tag'>&lt;<span class='hljs-name'>select</span> <span class='hljs-attr'>onChange</span>=<span class='hljs-string'>{handleChange}</span> <span class='hljs-attr'>value</span>=<span class='hljs-string'>{option}</span>&gt;</span>
              <span class='hljs-tag'>&lt;<span class='hljs-name'>option</span> <span class='hljs-attr'>value</span>=<span class='hljs-string'>'nintendo'</span>&gt;</span>Nintendo Switch<span class='hljs-tag'>&lt;/<span class='hljs-name'>option</span>&gt;</span>
              <span class='hljs-tag'>&lt;<span class='hljs-name'>option</span> <span class='hljs-attr'>value</span>=<span class='hljs-string'>'sony'</span>&gt;</span>Sony PlayStation<span class='hljs-tag'>&lt;/<span class='hljs-name'>option</span>&gt;</span>
              <span class='hljs-tag'>&lt;<span class='hljs-name'>option</span> <span class='hljs-attr'>value</span>=<span class='hljs-string'>'microsoft'</span>&gt;</span>Microsoft Xbox<span class='hljs-tag'>&lt;/<span class='hljs-name'>option</span>&gt;</span>
              <span class='hljs-tag'>&lt;<span class='hljs-name'>option</span> <span class='hljs-attr'>value</span>=<span class='hljs-string'>'valve'</span>&gt;</span>Valve Steam<span class='hljs-tag'>&lt;/<span class='hljs-name'>option</span>&gt;</span>
            <span class='hljs-tag'>&lt;/<span class='hljs-name'>select</span>&gt;</span>
          <span class='hljs-tag'>&lt;/<span class='hljs-name'>form</span>&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>button</span> <span class='hljs-attr'>type</span>=<span class='hljs-string'>'button'</span> <span class='hljs-attr'>onClick</span>=<span class='hljs-string'>{handleResetClick}</span>&gt;</span>
            Reset
          <span class='hljs-tag'>&lt;/<span class='hljs-name'>button</span>&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>button</span> <span class='hljs-attr'>type</span>=<span class='hljs-string'>'button'</span> <span class='hljs-attr'>onClick</span>=<span class='hljs-string'>{handlePCClick}</span>&gt;</span>
            PC Master Race!
          <span class='hljs-tag'>&lt;/<span class='hljs-name'>button</span>&gt;</span>
        <span class='hljs-tag'>&lt;/&gt;</span>
      );
    }</span>
  </code></pre>
  <h3 id='working-with-file-inputs'>Working with File Inputs</h3>
  <pre><code class='lang-js'>  <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>Form</span>(<span class='hljs-params'></span>) </span>{
      <span class='hljs-keyword'>const</span> [fileKey, setFileKey] = React.useState(<span class='hljs-built_in'>Date</span>.now());
      <span class='hljs-keyword'>const</span> [fileName, setFileName] = React.useState(<span class='hljs-string'>''</span>);
      <span class='hljs-keyword'>const</span> [fileSize, setFileSize] = React.useState(<span class='hljs-number'>0</span>);
      <span class='hljs-keyword'>const</span> [error, setError] = React.useState(<span class='hljs-literal'>null</span>);
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>resetFile</span>(<span class='hljs-params'></span>) </span>{
        setFileKey(<span class='hljs-built_in'>Date</span>.now());
        setFileName(<span class='hljs-string'>''</span>);
        setError(<span class='hljs-literal'>null</span>);
      }
  
      <span class='hljs-function'><span class='hljs-keyword'>function</span> <span class='hljs-title'>handleChange</span>(<span class='hljs-params'>event</span>) </span>{
        <span class='hljs-keyword'>const</span> file = event.target.files[<span class='hljs-number'>0</span>];
  
        setFileSize(file.size);
  
        <span class='hljs-keyword'>if</span> (file.size &gt; <span class='hljs-number'>100000</span>) {
          setError(<span class='hljs-string'>'The picked file is too big!'</span>);
        }
  
        setFileName(file.name);
      }
  
      <span class='hljs-keyword'>return</span> (
        <span class='xml'><span class='hljs-tag'>&lt;<span class='hljs-name'>form</span>&gt;</span>
          <span class='hljs-tag'>&lt;<span class='hljs-name'>label</span> <span class='hljs-attr'>htmlFor</span>=<span class='hljs-string'>'file'</span>&gt;</span>
            Select a single file to upload. (max size: 100kb)
            <span class='hljs-tag'>&lt;<span class='hljs-name'>br</span> /&gt;</span>
            {fileName &amp;&amp; (
              <span class='hljs-tag'>&lt;&gt;</span>
                <span class='hljs-tag'>&lt;<span class='hljs-name'>strong</span>&gt;</span>File:<span class='hljs-tag'>&lt;/<span class='hljs-name'>strong</span>&gt;</span> {fileName} ({fileSize / 1000}kb)
              <span class='hljs-tag'>&lt;/&gt;</span>
            )}
            <span class='hljs-tag'>&lt;<span class='hljs-name'>input</span> <span class='hljs-attr'>id</span>=<span class='hljs-string'>'file'</span> <span class='hljs-attr'>type</span>=<span class='hljs-string'>'file'</span> <span class='hljs-attr'>key</span>=<span class='hljs-string'>{fileKey}</span> <span class='hljs-attr'>onChange</span>=<span class='hljs-string'>{handleChange}</span> <span class='hljs-attr'>style</span>=<span class='hljs-string'>{{</span> <span class='hljs-attr'>display:</span> '<span class='hljs-attr'>none</span>' }} /&gt;</span>
          <span class='hljs-tag'>&lt;/<span class='hljs-name'>label</span>&gt;</span>
          {error &amp;&amp; (
            <span class='hljs-tag'>&lt;<span class='hljs-name'>label</span> <span class='hljs-attr'>style</span>=<span class='hljs-string'>{{</span> <span class='hljs-attr'>color:</span> '<span class='hljs-attr'>red</span>' }} <span class='hljs-attr'>htmlFor</span>=<span class='hljs-string'>'file'</span>&gt;</span>
              {error}
            <span class='hljs-tag'>&lt;/<span class='hljs-name'>label</span>&gt;</span>
          )}
          <span class='hljs-tag'>&lt;<span class='hljs-name'>button</span> <span class='hljs-attr'>type</span>=<span class='hljs-string'>'button'</span> <span class='hljs-attr'>onClick</span>=<span class='hljs-string'>{resetFile}</span>&gt;</span>
            Reset file
          <span class='hljs-tag'>&lt;/<span class='hljs-name'>button</span>&gt;</span>
        <span class='hljs-tag'>&lt;/<span class='hljs-name'>form</span>&gt;</span>
      );
    }</span>
  </code></pre>
  ",
  tag: tag2,
  lesson: lesson43,
  section: 'main',
)

massign15 = Sublesson.create(
  title: 'Multi Step Form',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Create a multi step form for your module peer review feedback. Use the same questions and a fixed amount of three peers.</p>
  <p>  <em>Optional</em>: Ask for the amount of peers before starting to write the feedback.</p>
  <p>  It must have a step for each peer and keep the states of each one until the user send the form.</p>
  <p>  <em>Optional</em>: Keep the responses in Storage until the user finish, in the case the user reloads reuse the previous responses to let them continue filling the feedback.</p>
  <p>  When the user sends the form show the results of each peer feedback along the peer name in a single view.</p>
  <p>  <em>Optional</em>: Split the responses in tabs per each peer.</p>
  <p>  <em>Optional</em>: Save the responses in Storage and when the user reloads show the responses view again, add a button to reset the responses and fill the form again.</p>
  ',
  tag: tag3,
  lesson: lesson43,
  section: 'main',
)

Sublesson.create(
  title: 'Extra information',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://reactjs.org/docs/conditional-rendering.html">Conditional Rendering</a></li>
  <li><a href="https://reactjs.org/docs/lists-and-keys.html">List and Keys</a></li>
  <li><a href="https://reactjs.org/docs/forms.html">Forms</a></li>
  <li><a href="https://medium.com/myheritage-engineering/how-controllable-react-components-maximize-reusability-86e3d233fa8e">How &quot;Controllable&quot; React components maximize reusability</a></li>
  <li><a href="https://jaredpalmer.com/formik">Formik</a> (<em>optional</em>)</li>
  <li><a href="https://palmer.net/blog/form-field-scroll-management-in-react">Form Field Scroll Management in React</a></li>
  </ul>
  ',
  tag: tag5,
  lesson: lesson43,
  section: 'extra',
)

Sublesson.create(
  title: 'CSS in JS',
  content: '<h1 id="css-in-js">CSS in JS</h1>
  <h2 id="topics">Topics</h2>
  <ul>
  <li>Introduction to CSS in JS</li>
  <li>Styled Components vs Emotion</li>
  <li>The <code>css</code> Prop</li>
  <li><p>Testing Styles</p>
  <h2 id="questions">Questions</h2>
  </li>
  <li><p>What is CSS in JS?</p>
  </li>
  <li>What problems does it solve?</li>
  <li>Is CSS in JS a React-only feature?</li>
  <li>What is Styled Components?</li>
  <li>What is Emotion?</li>
  <li>How could you style components using them?</li>
  <li>What is the <code>css</code> props?</li>
  <li>How could you test your CSS styles?</li>
  </ul>
  ',
  tag: tag1,
  lesson: lesson44,
  section: 'main',
)

Sublesson.create(
  title: 'Practice add css to js',
  content: '<h2 id="workshop">Workshop</h2>
  <h3 id="slides">Slides</h3>
  <p>  Read <a href="https://speakerdeck.com/vjeux/react-css-in-js">React: CSS in JS</a> slides</p>
  <h3 id="using-css">Using CSS</h3>
  <pre><code class="lang-css">  <span class="hljs-comment">/* index.css */</span>
    <span class="hljs-selector-class">.title</span> {
      <span class="hljs-attribute">color</span>: red;
    }
    <span class="hljs-selector-class">.title</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">color</span>: blue;
    }
  
    <span class="hljs-selector-class">.input</span> {
      <span class="hljs-attribute">color</span>: blue;
      <span class="hljs-attribute">padding</span>: <span class="hljs-number">0.5em</span> <span class="hljs-number">1em</span>;
    }
  
    <span class="hljs-selector-class">.paragraph</span> {
      <span class="hljs-attribute">font-size</span>: <span class="hljs-number">1.25em</span>;
    }
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// index.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> { render } <span class="hljs-keyword">from</span> <span class="hljs-string">"react-dom"</span>;
    <span class="hljs-keyword">import</span> <span class="hljs-string">"./style.css"</span>;
  
    <span class="hljs-keyword">import</span> Codeable <span class="hljs-keyword">from</span> <span class="hljs-string">"./codeable"</span>;
  
    <span class="hljs-keyword">const</span> $root = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"root"</span>);
    render(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">Codeable</span> /&gt;</span>, $root);</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// input.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Input</span>(<span class="hljs-params">{ value, onWrite }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">const</span> timer = setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> onWrite(value), <span class="hljs-number">1000</span>);
        <span class="hljs-keyword">return</span> <span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> clearTimeout(timer);
      }, [value, onWrite]);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        onWrite(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">input</span>
          <span class="hljs-attr">className</span>=<span class="hljs-string">"input"</span>
          <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span>
          <span class="hljs-attr">value</span>=<span class="hljs-string">{value}</span>
          <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span>
        /&gt;</span>
      );
    }
  
    export default Input;</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// title.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Title</span>(<span class="hljs-params">{ isWriting, value }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = value;
        }
      }, [isWriting, value]);
  
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span> <span class="hljs-attr">className</span>=<span class="hljs-string">"title"</span>&gt;</span>{value}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> Title;
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// codeable.js</span>
    import React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
  
    import Title <span class="hljs-keyword">from</span> <span class="hljs-string">"./title"</span>;
    import Input <span class="hljs-keyword">from</span> <span class="hljs-string">"./input"</span>;
  
    <span class="hljs-function">function <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      <span class="hljs-function">function <span class="hljs-title">handleWrite</span>(<span class="hljs-params"><span class="hljs-keyword">value</span></span>) </span>{
        setIsWriting(<span class="hljs-keyword">value</span> !== title);
        setTitle(<span class="hljs-keyword">value</span>);
      }
  
      <span class="hljs-keyword">return</span> (
        &lt;main&gt;
          &lt;Title <span class="hljs-keyword">value</span>={title} isWriting={isWriting} /&gt;
          &lt;Input <span class="hljs-keyword">value</span>={title} onWrite={handleWrite} /&gt;
          &lt;p className=<span class="hljs-string">"paragraph"</span>&gt;User <span class="hljs-keyword">is</span> writing: {isWriting.toString()}&lt;/p&gt;
        &lt;/main&gt;
      );
    }
  
    export <span class="hljs-keyword">default</span> Codeable;
  </code></pre>
  <h3 id="using-css-modules">Using CSS Modules</h3>
  <pre><code class="lang-css">  <span class="hljs-comment">/* title.module.css */</span>
    <span class="hljs-selector-class">.title</span> {
      <span class="hljs-attribute">color</span>: red;
    }
    <span class="hljs-selector-class">.title</span><span class="hljs-selector-pseudo">:hover</span> {
      <span class="hljs-attribute">color</span>: blue;
    }
  </code></pre>
  <pre><code class="lang-css">  <span class="hljs-comment">/* input.module.css */</span>
    <span class="hljs-selector-class">.input</span> {
      <span class="hljs-attribute">color</span>: blue;
      <span class="hljs-attribute">padding</span>: <span class="hljs-number">0.5em</span> <span class="hljs-number">1em</span>;
    }
  </code></pre>
  <pre><code class="lang-css">  <span class="hljs-comment">/* codeable.module.css */</span>
    <span class="hljs-selector-class">.paragraph</span> {
      <span class="hljs-attribute">font-size</span>: <span class="hljs-number">1.25em</span>;
    }
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// index.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> { render } <span class="hljs-keyword">from</span> <span class="hljs-string">"react-dom"</span>;
  
    <span class="hljs-keyword">import</span> Codeable <span class="hljs-keyword">from</span> <span class="hljs-string">"./codeable"</span>;
  
    <span class="hljs-keyword">const</span> $root = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"root"</span>);
    render(<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">Codeable</span> /&gt;</span>, $root);</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// input.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> styles <span class="hljs-keyword">from</span> <span class="hljs-string">"./input.module.css"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Input</span>(<span class="hljs-params">{ value, onWrite }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">const</span> timer = setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> onWrite(value), <span class="hljs-number">1000</span>);
        <span class="hljs-keyword">return</span> <span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> clearTimeout(timer);
      }, [value, onWrite]);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        onWrite(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">input</span>
          <span class="hljs-attr">className</span>=<span class="hljs-string">{styles.input}</span>
          <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span>
          <span class="hljs-attr">value</span>=<span class="hljs-string">{value}</span>
          <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span>
        /&gt;</span>
      );
    }
  
    export default Input;</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// title.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> styles <span class="hljs-keyword">from</span> <span class="hljs-string">"./title.module.css"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Title</span>(<span class="hljs-params">{ isWriting, value }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = value;
        }
      }, [isWriting, value]);
  
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span> <span class="hljs-attr">className</span>=<span class="hljs-string">{styles.title}</span>&gt;</span>{value}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> Title;
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// codeable.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> styles <span class="hljs-keyword">from</span> <span class="hljs-string">"./codeable.module.css"</span>;
  
    <span class="hljs-keyword">import</span> Title <span class="hljs-keyword">from</span> <span class="hljs-string">"./title"</span>;
    <span class="hljs-keyword">import</span> Input <span class="hljs-keyword">from</span> <span class="hljs-string">"./input"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleWrite</span>(<span class="hljs-params">value</span>) </span>{
        setIsWriting(value !== title);
        setTitle(value);
      }
  
      <span class="hljs-keyword">return</span> (
        &lt;main&gt;
          &lt;Title value={title} isWriting={isWriting} /&gt;
          &lt;Input value={title} onWrite={handleWrite} /&gt;
          &lt;p className={styles.paragraph}&gt;
            User is writing: {isWriting.toString()}
          &lt;/p&gt;
        &lt;/main&gt;
      );
    }
  
    export default Codeable;
  </code></pre>
  <h3 id="using-emotion">Using Emotion</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> emotion</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// title.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> { css } <span class="hljs-keyword">from</span> <span class="hljs-string">"emotion"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Title</span>(<span class="hljs-params">{ isWriting, value }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">if</span> (!isWriting) {
          <span class="hljs-built_in">document</span>.title = value;
        }
      }, [isWriting, value]);
  
      <span class="hljs-keyword">const</span> className = css<span class="hljs-string">`
        color: red;
        &amp;:hover {
          color: blue;
        }
      `</span>;
  
      <span class="hljs-keyword">return</span> <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">h1</span> <span class="hljs-attr">className</span>=<span class="hljs-string">{className}</span>&gt;</span>{value}<span class="hljs-tag">&lt;/<span class="hljs-name">h1</span>&gt;</span></span>;
    }
  
    <span class="hljs-keyword">export</span> <span class="hljs-keyword">default</span> Title;
  </code></pre>
  <h3 id="using-emotion-core">Using Emotion Core</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> @emotion/core</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">/** @jsx jsx */</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> { jsx } <span class="hljs-keyword">from</span> <span class="hljs-string">"@emotion/core"</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Input</span>(<span class="hljs-params">{ value, onWrite }</span>) </span>{
      React.useEffect(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> {
        <span class="hljs-keyword">const</span> timer = setTimeout(<span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> onWrite(value), <span class="hljs-number">1000</span>);
        <span class="hljs-keyword">return</span> <span class="hljs-function"><span class="hljs-params">()</span> =&gt;</span> clearTimeout(timer);
      }, [value, onWrite]);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleChange</span>(<span class="hljs-params">event</span>) </span>{
        onWrite(event.target.value);
      }
  
      <span class="hljs-keyword">return</span> (
        <span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">input</span>
          <span class="hljs-attr">css</span>=<span class="hljs-string">{{</span> <span class="hljs-attr">color:</span> "<span class="hljs-attr">blue</span>", <span class="hljs-attr">padding:</span> "<span class="hljs-attr">.5em</span> <span class="hljs-attr">1em</span>" }}
          <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span>
          <span class="hljs-attr">value</span>=<span class="hljs-string">{value}</span>
          <span class="hljs-attr">onChange</span>=<span class="hljs-string">{handleChange}</span>
        /&gt;</span>
      );
    }
  
    export default Input;</span>
  </code></pre>
  <h3 id="using-emotion-styled">Using Emotion Styled</h3>
  <pre><code class="lang-bash">  $ yarn <span class="hljs-keyword">add</span><span class="bash"> @emotion/styled</span>
  </code></pre>
  <pre><code class="lang-js">  <span class="hljs-comment">// codeable.js</span>
    <span class="hljs-keyword">import</span> React <span class="hljs-keyword">from</span> <span class="hljs-string">"react"</span>;
    <span class="hljs-keyword">import</span> styled <span class="hljs-keyword">from</span> <span class="hljs-string">"@emotion/styled"</span>;
  
    <span class="hljs-keyword">import</span> Title <span class="hljs-keyword">from</span> <span class="hljs-string">"./title"</span>;
    <span class="hljs-keyword">import</span> Input <span class="hljs-keyword">from</span> <span class="hljs-string">"./input"</span>;
  
    <span class="hljs-keyword">const</span> Paragraph = styled.p<span class="hljs-string">`
      font-size: 1.25em;
    `</span>;
  
    <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">Codeable</span>(<span class="hljs-params"></span>) </span>{
      <span class="hljs-keyword">const</span> [title, setTitle] = React.useState(<span class="hljs-string">"Codeable"</span>);
      <span class="hljs-keyword">const</span> [isWriting, setIsWriting] = React.useState(<span class="hljs-literal">false</span>);
  
      <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">handleWrite</span>(<span class="hljs-params">value</span>) </span>{
        setIsWriting(value !== title);
        setTitle(value);
      }
  
      <span class="hljs-keyword">return</span> (
        &lt;main&gt;
          &lt;Title value={title} isWriting={isWriting} /&gt;
          &lt;Input value={title} onWrite={handleWrite} /&gt;
          &lt;Paragraph&gt;User is writing: {isWriting.toString()}&lt;/Paragraph&gt;
        &lt;/main&gt;
      );
    }
  
    export default Codeable;
  </code></pre>
  ',
  tag: tag2,
  lesson: lesson44,
  section: 'main',
)

massign16 = Sublesson.create(
  title: 'Use Emotion',
  content: '<h2 id="mini-assignments">Mini Assignments</h2>
  <p>  Use Emotion (either core, styled or normal) and add styles to the components you created in the Mini Assignment of <a href="./w4d4-list-forms.md">m3w4d4</a>.</p>
  <p>  <em>Optional</em>: Create the same styles using the other versions of Emotion
    <em>Optional</em>: Create the same styles using CSS Modules</p>
  ',
  tag: tag3,
  lesson: lesson44,
  section: 'main',
)

Sublesson.create(
  title: 'Extra information',
  content: '<h2 id="resources">Resources</h2>
  <ul>
  <li><a href="https://speakerdeck.com/vjeux/react-css-in-js">React: CSS in JS</a> (the original slides)</li>
  <li><a href="https://www.styled-components.com/">Styled Components</a></li>
  <li><a href="https://emotion.sh/">Emotion</a></li>
  <li><a href="https://emotion.sh/docs/css-prop">The <code>css</code> Prop</a></li>
  <li><a href="https://css-tricks.com/the-fragmented-but-evolving-state-of-css-in-js/">The Fragmented, But Evolving State of CSS-in-JS</a></li>
  <li><a href="https://emotion.sh/docs/jest-emotion">Jest Emotion</a></li>
  <li><a href="https://medium.com/seek-blog/a-unified-styling-language-d0c208de2660">A Unified Styling Language</a></li>
  <li><a href="https://www.youtube.com/watch?v=jjN2yURa_uM">Max Stoiber - The Road to Styled Components - React Conf 2017</a> (video)</li>
  </ul>
  ',
  tag: tag4,
  lesson: lesson44,
  section: 'extra',
)

Solution.create(content:'http://massign1.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign1.id, score: 4)
Solution.create(content:'http://massign2.com/user1', status: "sent", user_id: user1.id, sublesson_id: massign2.id, score: 3)
Solution.create(content:'http://massign3.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign3.id, score: 4)
Solution.create(content:'http://massign5.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign5.id, score: 2.3)
Solution.create(content:'http://massign6.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign6.id, score: 2.3)
Solution.create(content:'http://massign7.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign7.id, score: 2.3)
Solution.create(content:'http://massign8.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign8.id, score: 2.3)
Solution.create(content:'http://massign9.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign9.id, score: 2.3)
Solution.create(content:'http://massign10.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign10.id, score: 2.7)
Solution.create(content:'http://massign11.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign11.id, score: 3.6)
Solution.create(content:'http://massign12.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign12.id, score: 3.1)
Solution.create(content:'http://massign13.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign13.id, score: 1.8)
Solution.create(content:'http://massign14.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign14.id, score: 3.1)
Solution.create(content:'http://massign15.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign15.id, score: 3.1)
Solution.create(content:'http://massign16.com/user1', status: "saved", user_id: user1.id, sublesson_id: massign16.id, score: 3.1)

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
