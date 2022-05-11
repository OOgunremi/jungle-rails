# Jungle

A mini e-commerce application built with Rails 6.1.

## App Snapshots

### Screenshot of Home Page
!["Screenshot of Home Page](https://github.com/OOgunremi/jungle-rails/blob/master/docs/home.png)



### Screenshot of Home Page
!["Screenshot of Homepage Page"](https://github.com/OOgunremi/jungle-rails/blob/master/docs/home2.png)



### Screenshot of Admin Page
!["Screenshot of Admin Page"](https://github.com/OOgunremi/jungle-rails/blob/master/docs/admin.png)


### Screenshot of Login Page
!["Screenshot of Login"](https://github.com/OOgunremi/jungle-rails/blob/master/docs/login.png)


### Screenshot of Signup Page
!["Screenshot of SignUp"](https://github.com/OOgunremi/jungle-rails/blob/master/docs/signup.png)


### Screenshot of About Page
!["Screenshot of About Page"](https://github.com/OOgunremi/jungle-rails/blob/master/docs/about.png)




## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server


## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
