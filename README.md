![TODO by DIVI logo](http://i.imgur.com/g7S1dCM.png)

By [Hunter Braun](https://github.com/goronfreeman)

TODOs made easy.

[Click here](http://todo-by-divi.herokuapp.com) for a live preview! This is the easiest way to get started.

## Setup

Make sure you have Ruby 2.3.0 and PostgreSQL 9.5.2 installed.

Clone the repository:

```console
git clone git@github.com:goronfreeman/divi_todo.git
```

`cd` into the newly cloned repo, then run:

```console
gem install bundler
bundle install
```

Prepare the database:

```console
bin/rake db:setup
```

Start the Rails server:

```console
bin/rails server
```

## Logging In

Visit localhost:3000 in your browser of choice.

Create a new account, or alternatively, click the 'Login' button in the top right corner.

If you clicked 'Login', use 'test@test.com' for the email and 'password' for the password, then click 'Log In'.

## Specs

You can run the RSpec test suite inside the project directory with:

```console
rspec
```
