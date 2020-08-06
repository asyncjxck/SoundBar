# Project

[SoundBar](https://github.com/jackismoe/SoundBar)

## Install

### Clone the repository

```shell
git clone git@github.com:jackismoe/SoundBar.git
```

### Check your Ruby version
#### This project uses Ruby 2.6.1 & Rails 6.0.3

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```
### If attempting to log in via Twitter, make sure `gem 'thin'` is not commented out in the gemfile, and add https:// to the beginning of your url

```shell
thin start --ssl

# https://localhost:3000 or https://127.0.0.1:3000
```