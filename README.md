# Medium Well
[Live Demo](https://medium-well-done.herokuapp.com/#/)

Medium Well is a website that allows users to share their favorite conspircay theories with the world, akin to Medium. The site uses PostgrSQL and Rails on the backend, and React.js leveraged with Redux for the frontend. 

More features coming soon!

## Features

* Login: A secured backend that prevents unauthorized user interaction from within the app
* Splash Page: Displays and updates all stories that meet publication criteria in real-time
* New Story Page: Allows logged in users to submit their own conspiracy theory
* Story Show Page: Displays an individual story, as well as its claps (likes) and comments
* User Show Page: Displays all stories contributed by the user who is currently logged in
* Comments: Gives logged in users the option to comment on stories

### Home Page
Stories on the home page are seperated using 3 react components displayed using flex 


### User Show

A logged in user can view a list of all stories they've published since joining


### Log In & Sign Up

An interactive modal that lets new users create an account or demo the site

### Challenges

* Maintaining organized and accessible slices of global state to avoid repititve prop threading between React Components 
* Conditionally rendering different slices of global and local state within the same comonent depending on if a user is signed in
* Allowing for scalabliity of both stories and pictures without compormising stylistic integrity


### Snippets





