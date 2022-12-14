# Coding exercise: Sports Reference

## Language/Database

- Ruby 3.0.3
- Rails 7.0.4
- PostgreSQL database

## Approach

**1. Decide on tools**

Initially, in a bid to "make it work, then make it cute", I decided to use RoR for the backend, a PostgreSQL database, and though it felt like overkill, a Vue.JS frontend. I figured for the time being I could choose tools I was familiar with in order to complete the exercise and if any time remained, go back and refactor. For example, I started to look into using ERB files to display the HTML, which would be less heavy-handed than building an entire frontend.

**2. Plan, design**

Original idea:

- design schema, work out associations prior to writing any code--you can find this work [here](https://docs.google.com/spreadsheets/d/1I-4xQKZsIKPTtylUxhVHfyQkZZeFAynJRgFY2LKrOuc/edit?usp=sharing)
- generate dummy app to play around and better envision the challenges I would face
- generate models
- figure out how to seed database with CSV files
- associate models
- test associations
- figure out how best to display data from four different models into one table

However, on further examination of the CSV files, I realized the tables had already established primary and foreign keys, which meant (as far as I could tell) they had previously been associated in another database. This challenged my understanding of how to properly associate my models because I knew that on creation of my models, Active Record would create new unique IDs for each record. After some research, and reaching out to a couple developers in my community, my options seemed to be:

- suppress creation of primary keys upon creation of models (was this even possible?)
- reassign primary and foreign keys to match those of the original tables (was this even possible?)

And truthfully, this is where I spent the bulk of my time. I did research on foreign/primary keys and reached out to other developers in my community to bounce ideas off them, pair, and reviewed my work and understanding with a senior dev, all the while keeping in mind my goal was to learn and experiment, not have the work done for me.

**3. Adjust**

What I completed:

- a partially finished Rails app with a PostgreSQL database
- a successfully seeded database (found here: csv-app/db/seeds.rb) from the CSV files provided using [this guide](https://gist.github.com/arjunvenkat/1115bc41bf395a162084)
- successfully associated models (by reassigning primary and foreign keys to match those from the original tables)
- successfully calling associated data--example:

```
person = Person.find_by(name: "Cristiano Ronaldo")
person.stats

# yields all stats in the Stats table associated with Ronaldo's name (from the Person table). This works for the orig_person_id and birth_date attributes from the Person table, as well.
```

The project ended up pretty naturally being divided into chunks. I would work on one problem, figure it out, and immediately move on to the next issue. I had to stop right at the point where I was moving on to calling each specific attribute. For example, I started to play around with an age method to generate the correct age in my Person model using the Aug 1 constraint. While I did not reach the point of displaying the table, I would explore the use of ERB files. **However, I've included two relevant frontend samples below where I've completed similar tasks.**

## Extras

Things I learned:

- how to reassign primary and foreign keys when associating models
- how to seed a database with CSV files
- more practice with basic SQL queries
- how valuable it is to reach out to your community (I knew this, but this project brought that home)
- how to write/format a README.md :)
- indexes. I know I need a mechanism that keeps the original unique IDs in the Competition, Team, and Person tables unique. I experimented with generating a unique index for my Person model, but that's as far as I got.

Frontend examples:

- a [resume database](https://github.com/SamSharff/resume-frontend/blob/main/src/views/IndexResume.vue), where users could input new training and experiences, exporting relevant data to one new resume. Using Axios, I made web requests to the backend, calling and displaying user data in tables. I imagine doing something similar (creating a method to call the relevant data and injecting that into an HTML table) as a next step for this app. Additionally, while I used Bootstrap, I based my design on sites like Baseball Reference and Ballotpedia which I use regularly, and which rely on a straight-forward design I like.
- admittedly a crudely designed [passion project](https://github.com/SamSharff/sox-yanks-frontend/blob/main/src/views/HomeView.vue) where I created a static page using Baseball Reference's Top 10 Plays of the Sox/Yankees 2004 ALCS series. I exported the HTML table, hardcoded it into my page, and embedded clips of each play in the Description column.

Resources utlized/hours spent:
~ 40-70 hours

- https://stackoverflow.com/questions/16222838/has-many-through-with-a-foreign-key
- https://rails.devcamp.com/trails/3/campsites/54/guides/how-use-different-foreign-key-rails
- https://guides.rubyonrails.org/index.html
- https://pgexercises.com/
- https://api.rubyonrails.org/v7.0.4/classes/ActiveRecord/FinderMethods.html
- https://edgeguides.rubyonrails.org/active_record_basics.html
- https://ruby-doc.org/stdlib-2.6.1/libdoc/csv/rdoc/CSV.html
- https://gist.github.com/arjunvenkat/1115bc41bf395a162084
- https://levelup.gitconnected.com/quickly-seeding-a-rails-database-using-a-csv-file-8438b8b68f05
- https://medium.com/analytics-vidhya/how-to-create-a-readme-md-file-8fb2e8ce24e3
- https://stackoverflow.com/questions/31462005/defining-custom-methods-within-a-model-class-in-rails-4
- https://medium.com/@mera.stackhouse/what-are-indexes-and-how-to-add-them-to-your-rails-app-dc066d538771
