# Capistrano Coditsu

[![CircleCI](https://circleci.com/gh/coditsu/capistrano-coditsu/tree/master.svg?style=svg)](https://circleci.com/gh/coditsu/capistrano-coditsu/tree/master)

Coditsu integration for Capistrano.

## Installation

Add this line to your application Gemfile:

```ruby
gem 'capistrano-coditsu',
    git: 'git@github.com:coditsu/capistrano-coditsu.git',
    require: true,
    branch: :master
```

And then execute:

```
  $ bundle
```

## Usage

In your **Capfile**

```ruby
require 'capistrano/coditsu'

install_plugin Capistrano::Coditsu
```

### capistrano-rails

We are including `capistrano-rails` but you need to require it in your application on your own.

[How to do it](https://github.com/capistrano/rails#usage)

### capistrano-karafka

We are including `capistrano-karafka` but you need to require it in your application on your own.

[How to do it](https://github.com/karafka/capistrano-karafka#usage)

### capistrano-sidekiq

We are including `capistrano-sidekiq` but you need to require it in your application on your own.

[How to do it](https://github.com/seuros/capistrano-sidekiq#usage)

### capistrano3-puma

We are including `capistrano3-puma` but you need to require it in your application on your own.

[How to do it](https://github.com/seuros/capistrano-puma#usage)

## Note on contributions

First, thank you for considering contributing to Coditsu ecosystem! It's people like you that make the open source community such a great community!

Each pull request must pass all our quality requirements.

To check if everything is as it should be, we use [Coditsu](https://coditsu.io) that combines multiple linters and code analyzers for both code and documentation. Once you're done with your changes, submit a pull request.

Coditsu will automatically check your work against our quality standards. You can find your commit check results on the [builds page](https://app.coditsu.io/coditsu/commit_builds) of Coditsu organization.

[![coditsu](https://coditsu.io/assets/quality_bar.svg)](https://app.coditsu.io/coditsu/commit_builds)
