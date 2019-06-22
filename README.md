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


<img width="1431" alt="Screen Shot 2019-06-21 at 4 58 26 PM" src="https://user-images.githubusercontent.com/46327483/59959177-e0c39580-9466-11e9-85d5-49377f0b5fa3.png">

### User Show

A logged in user can view a list of all stories they've published since joining

<img width="1438" alt="Screen Shot 2019-06-21 at 5 00 08 PM" src="https://user-images.githubusercontent.com/46327483/59959250-32b8eb00-9468-11e9-9cf1-aa55b3430cad.png">

### Log In & Sign Up

An interactive modal that lets new users create an account or demo the site

<img width="1437" alt="Screen Shot 2019-06-21 at 4 59 31 PM" src="https://user-images.githubusercontent.com/46327483/59959239-0b621e00-9468-11e9-8d54-4f526e602500.png">

### Challenges

* Maintaining organized and accessible slices of global state to avoid repititve prop threading between React Components 
* Conditionally rendering different slices of global and local state within the same comonent depending on if a user is signed in
* Allowing for scalabliity of both stories and pictures without compormising stylistic integrity


### Snippets
The function bellow was used to ensure that all AJAX promises were returned in JavaScript native formats  
<img width="1105" alt="Screen Shot 2019-06-21 at 5 02 13 PM" src="https://user-images.githubusercontent.com/46327483/59959278-09e52580-9469-11e9-9d02-ca000cee5cd8.png">
<img width="354" alt="Screen Shot 2019-06-21 at 9 11 56 PM" src="https://user-images.githubusercontent.com/46327483/59959291-3d27b480-9469-11e9-8f9c-70058a1a1e73.png">



