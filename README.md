# Basket

Basket is a web-based POS system built using React App, withimpletmentatin of Hooks and Redux. Using Basket allows users to build checks out fo items and close them with payment, for use in a reatil or food service environment.

[Front End Github](https://github.com/tdonovan79/basket_front_end)

## Features
  1. Login and user authentication - From the options screen, a new employee can be created, and existing employees can log in with their username and password. The user tokens used for authentication are encoded using JWT.
  2. Creation of checks - Once an employee is logged in, they can create new checks and add/remove items from that check. The checks are listed in a sidebar to the left based on their ID.
  3. Payment/refund - Checks can be closed using credit payment handle through Stripe API. Once a check has been closed, it can be reopened from the Reports page, and a refund will be issued through Stripe API.

## Dev Tools
- Front End:
  - `React/Redux` - main frameworks building out the front end of the app
  - `Stripe API` - used to handle payment and refund
  - `Github Pages` - used to deploy front end of app

- Back End:
  - `Ruby on Rails` - main framework used building out back end of app
  - `PostgreSQL` - database management system 
  - `JWT` - encodes/decodes the web tokens for user authentication
  - `Heroku` - used to deploy back end of app
