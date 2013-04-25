# Web Playground

A basic webapp to springboard single-page tech demos.  WebPlayground is a Sinatra app that:

* Auto-loads itself using `Sinatra::Reloader`
* Dynamically loads CoffeeScript
* Dynamically loads SASS
* Serves static javascript
* Loads [Backbone 1.0.0](https://github.com/documentcloud/backbone)
* Loads [Underscore 1.4.4](https://github.com/documentcloud/underscore)
* Loads [jQuery 1.9.1](https://github.com/documentcloud/underscore)

This was designed so I could stop building this same app repeatedly whenever I work on new 
client-side libraries and their demos. The flow usually goes like this:

1. Build canned JSON response in sinatra route
2. Write JS/CS library that consumes canned JSON response
3. Demo library in Playground
4. Hook library to real JSON responses in real app
5. Nuke Playground

# Usage

After running `bundle install` to get the ruby dependencies, `rackup` will start the app 
at `http://localhost:9292`.  The app is structured like so:

* SASS goes in `assets/sass` and will be accessible via /assets/sass/FILENAME.css
* CoffeeScript goes in `assets/sass` and will be accessible via /assets/coffee/FILENAME.js
* JavaScript goes in `assets/javascripts` and will be accessible via /assets/javascripts/FILENAME.js
* Static files that are not SASS/CoffeeScript/JavaScript go in public/
* Ruby code goes in `lib`. This is where the PlaygroundApp sinatra code lives
