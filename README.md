# Web Playground

A basic webapp to springboard single-page tech demos.  WebPlayground is a Sinatra app that:

* Auto-loads itself using `Sinatra::Reloader`
* Dynamically loads CoffeeScript in `assets/coffee`
* Dynamically loads SASS in `assets/sass`
* Serves static javascript in `assets/javascripts`
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
