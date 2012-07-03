#Disc Explorer

Web app that allows for very fast client side sorting and filtering of all disc golf discs. Data was screen scraped from http://www.discgolfcenter.com please buy your discs from there!

---

### Installation

1. Clone
1. > bundle install
1. > bundle exec rake db:migrate
1. > rails start
1. > start http://localhost:3000

*what? no data? lets screen scrape!*

1. > npm install HTTPRequest 
1. > node download.js
1. > mv disc-database* public/
1. > start http://localhost:3000/disc-database.html
1. Copy the on-screen json and create a file called disc-database.json in the root of the project
1. > node load.js 

*for the weak at heart, just run the last step ;)*

Have fun, let me know if there are any issues. 