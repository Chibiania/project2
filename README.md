# Project 2
## Book2Adapt

### This is a rails application that lets users view books and the corresponding adaptations. Users may also sign up and track the additions they have made to the site as a whole.



####Technologies used
- Ruby
- Rails
- HTML
- CSS
- Bootstrap

#### The approach taken
##### Bronze
- everything in the [user stories](https://github.com/Chibiania/project2/blob/master/planning/user_stories.md)


##### Silver
- have edit fields auto-filled with current data
- home/landing page using welcome controller
- adding user sign in capabilities
- have users able to add and edit books

##### Gold
- nest only the edit and new routes for adaptations so when book information is being entered, it is for a specific books
- users show page has all the additions made by that particular user


#### Installation instructions
#####Deployed App
[Book2Adapt](https://book2adapt.herokuapp.com/)

#####Viewing the Code
- Clone repo
- Run bundle install
- Run rake db:drop db:create db:migrate db:seed
- Run rails s
- Go to localhost:3000 in the browser


#### Unsolved problems
- can't get the default text color for date of release on adaptation show page to change to white
