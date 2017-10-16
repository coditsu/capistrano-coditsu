# Capistrano Coditsu

Coditsu integration for Capistrano.

## Installation

Add this line to your application Gemfile:

```ruby
gem 'capistrano-coditsu',
    git: 'git@bitbucket.org:coditsu/capistrano-coditsu.git',
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

## capistrano-rails

We are including `capistrano-rails` but you need to require it in your application on your own.
