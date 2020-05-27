<h1 align="center">
	<img
		width="300"
		alt="chatbot"
		src="https://raw.githubusercontent.com/willie-cadete/chatbot/master/img/chatbot.png">
    
</h1>

<h3 align="center">
	A simple FAQ chatbot in Portuguese
</h3>

<p align="center">
	<strong>
		<a href="https://wcl-chatbot.herokuapp.com/">Demo</a>
	</strong>
</p>

<p align="center">
	<img src="https://raw.githubusercontent.com/willie-cadete/chatbot/master/img/screenshot.png" width="550">
</p>

## Overview

- Register questions and answer with hastags
- Search for questions and hashtags
- Integrated with Telegram

## Prerequisites

Bundler and Ruby 2.6 installed.

## Installation and usage

To get started with the app, first clone the repo and `cd` into the directory:

```sh
$ git clone https://github.com/willie-cadete/chatbot
$ cd chatbot
```

Then install the needed packages

```sh
$ bundle install 
```

Next, migrate the database:

```
$ bundle exec rake db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ bundle exec rake spec
```

If the test suite passes, you’ll be ready to run the app in a local server:

```sh
$ rackup config.ru -o 0.0.0.0
```