# Chat Application
The web application to chat with users across the globe. It has been implemented in Ruby on Rails using Action Cables.
Multiple Users can chat with each others in the same room.

## Overview
This repository holds the build code to build the Chat Web Application. The instructions to the repository are mentioned below.

## Clone and Initialize the repo
To initialize the project, have [ruby-2.6.6](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-6-6-released/) installed.

To clone and setup the project
```bash
git clone git@github.com:nishitmodha/Chat.git
cd Chat

# this will take few minutes to install dependencies
bundle install

# if prompted then do run below command,
# which is used to verify already installed files in
# node_modules did not get removed
yarn install --check-files

# then perform the migration
rails db:migrate
```

To start the rails server in the localhost
```bash
rails s
```

## Deployed Application
The application is deployed [here](https://rails-chat-ac.herokuapp.com/).
