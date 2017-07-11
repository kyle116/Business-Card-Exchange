# Business Card Exchange

### A rails based web app that allows people to find and add people's contact information to their "wallet"

The purpose of business card exchange is to conviniently organize the contacts you meet in your own wallet


## To use the app

Visit [business card exchange](https://limitless-journey-57569.herokuapp.com/users) to use the app as a user.

Visit [the github repository ](https://github.com/kyle116/pj2) to download the app to your local machine.

This app was built with Ruby 2.3.3.


### Local installation instructions

Download the repository to your preferred directory.

 Start a Posgres local server.

 From the terminal and in your installation directory run

 `bundle install`

 to install the dependent gems.

 Create the database by running

 `rails db:create`.

 Create the database tables by running

 `rails db:migrate`

 from the terminal.

 In the terminal in your installation directory, run

 `rails console`

 to enter the rails console.

 In the rails console, start the rails server by running

 `rails server`

 in the terminal.

 User your web browser to go to

 [localhost:3000 ](localhost:3000)

 to use the site locally.


### Development process

Technologies used: HTML / CSS + Bootstrap / Javascript + jQuery / Ruby + Ruby on Rails / Postgres

The app was generated using ruby on rails.

[Trello](https://trello.com/b/BzcSkwJ2/wdi-project-2)

Profile Page Wireframe
![wireframe](https://github.com/kyle116/project2/blob/master/ERD.png)

ERD Diagram
![erd](https://github.com/kyle116/project2/blob/master/Profile_Wireframe.png)


## User Stories

As a user, I can sign up a new account with minimal information.

As a user, I can add different users business cards to my wallet.

As a user, I can browse the different users on the site.

As a user, I can logout out of the website from any page.

## Future implementations/Dreams

* Search for users by keyword.

* Sort/filter users by different attributes

* Allow users to create their own business cards to add to wallet

* Customizable business cards

* Upload profile pictures
