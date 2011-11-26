## Quick 'n' Dirty

* Painless CoffeeScript development inside of the familiar Sinatra platform.
* Compile CoffeeScript automatically on browser refresh
* Emulates Rails 3.1's asset pipeline
* Rake task to pre-compile coffeescripts for production-ready javascripts

## Prerequisites:

* node.js                  [setup](https://github.com/joyent/node/wiki/Installation)
* npm package management   [setup](http://npmjs.org/)
* coffeescript             [setup](http://jashkenas.github.com/coffee-script/#installation)
* oh, and ruby. 

## Setup directory

	git clone https://hjhart@github.com/hjhart/sinatra-coffee-script-template.git
	cd sinatra-coffee-script-template
	
Copy the `.rvmrc.example` file to `.rvmrc`. 

Change the gemset to the name of your project name (or whatever else you want it to be)
Change the environment variable if you don't want to work with ruby-1.9.2.

	source .rvmrc 

When prompted to trust the file, say yes. This will create the gemset and run bundler. This actually takes a while for therubyracer to install.

## Where do my coffeescript files go?

All of your coffeescript files will go into the `$APP_ROOT/coffeescript/` folder.
When you want to link to them from a view, link to `/assets/[filename].js`

### Example:

Place a file named `utils.coffee` inside of the `coffeescript` directory.
Link to it inside of your view:

	<script src="/assets/utils.js" type="text/javascript"></script>

Now everytime you load up `/assets/utils.js` it will re-render `utils.coffee` on every refresh. This also means that there is no smart caching, so this is only meant to be used in a development setting. :)
  
## Start up the server

	rackup
	
## Productionizing:

Once everything is ready for production, run `rake js:compile` and it will compile everything into the `public/assets` directory. Keep in mind that until you delete the javascript files within the `public/assets/` directory sinatra will _not_ be feeding the files within the `coffeescript` directory. 

![Counter](http://hjhart.dyndns.org:3003/coffee.jpg "Counter")
