# Legato-API

### Lighthouse Labs final project. <br> Contributors: [Aaron Tagadtad](https://github.com/atagadtad), [Cameron Dunning](https://github.com/CameronDunning), [Jonathan Milne-Skarzenski](https://github.com/jonny-ms)

## Description

Project description can be found in client-side repo: https://github.com/jonny-ms/legato-client.

## Setup

This project requires the following versions:

- Ruby 2.6.5
- Rails 6.0.0
- PostgreSQL >= 9.3

Clone repo:

```sh
  git clone git@github.com:jonny-ms/legato-server.git
```

Install dependencies:
```sh
  bundle install
```

Create postgresql database, run migrations, and seed some test data:
```sh
  rake db:create
  rake db:migrate
  rake db:seed
```

Run server:
```sh
  rails s
``` 

Note that the default TCP ports are set to 3000 for client-side and 3001 for server-side. If using a different port on the client-side, you will need to set need origins for CORS configs in `config/application.rb`.