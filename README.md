## Quick 'n' Dirty

* Painless CoffeeScript development inside of the familiar Sinatra platform.
* Compile CoffeeScript automatically on browser refresh in development mode
* Emulates Rails 3.1's asset pipeline
* Automatically compiles and caches to javascript files for production mode.

## Prerequisites:

* node.js                  [setup](https://github.com/joyent/node/wiki/Installation)
* npm package management   [setup](http://npmjs.org/)
* coffeescript             [setup](http://jashkenas.github.com/coffee-script/#installation)

## Setup directory

	git clone https://github.com/hjhart/sinatra-coffee-script-template.git
	cd sinatra-coffee-script-template
	cp .rvmrc.example .rvmrc
	
(optional) Open up your new .rvmrc file and change the gemset to the name of your project name (or whatever else you want it to be)
Change the environment variable if you don't want to work with ruby-1.9.2.

	source .rvmrc 

When prompted to trust the file, say yes. This will create the gemset and run bundler. This actually takes a while for therubyracer to install.

## Where do my coffeescript files go?

All of your coffeescript files will go into the `assets` folder.
When you want to link to them from a view, link to `/assets/[filename].js`

## Where do my javascript files go?

Place static javascript files inside of `public/assets`. You can link to the static files the same way.

### Example:

Place a coffescript file named `utils.coffee` inside of the `assets` directory.
Place a static javascript file named `backbone.js` inside of your `public/assets` directory

Linking to them is consistent and is very simple:

	<script src="/assets/utils.js" type="text/javascript"></script> # this compiles the coffeescript
	<script src="/assets/backbone.js" type="text/javascript"></script> # this loads the static javascript

In development mode, `/assets/utils.js` will compile the coffeescript on every refresh.
In production mode, it will server the compiled javascript file from `public/assets` (see notes below)
  
## Start up the server in development

	rackup
	
## Start up the server in production

Production is as simple as running

	rackup -E production. 
	
This will run the js:compile rake task and dump the compiled javascripts within the `public/assets/` folder where they'll be fed as static resources.

## Feedback:

Message me on twitter @hjhart, or, submit issues on github.

![Counter](http://hjhart.dyndns.org:3003/coffee.jpg "Counter")
