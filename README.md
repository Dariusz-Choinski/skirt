## skirt mini framework

####A little bit about project history:
In some day I went into ruby rack framework website. Because of curiosity I've started to study it deeper then before in the Past. I have already used frameworks based on rack like Sinatra or Rails, in such cases everything was done, just ready to go. I wanted to build a rack application from scratch. Such challenge was an opportunity to learn features of rack which I was never thinking about. Features just work. It was also opportunity to test some concepts regarding architecture of application, routers, and some other things.  
I couldn't find useful example of simply ruby application built in the way I wanted.

I hope this project may helps someone to start his own similar project.

####About:
This is a tiny ruby framework, mainly designed for rapid creation of API endpoints, but also handling static content from /public dir.  
I use it for development my own projects in local environment.  
It is used in project 'tdd-backbone-demo' on my GitHub.


####How to:
**Installation**  
Ruby version > 2.  
Clone project then go into project root.   
Run command 'bundle install'.

**Running**   
Run command 'rackup'.  
In shell you will see running webrick server and endpoint url.  
On host server is better to use thin or puma, gives you better control to start, stop or restart app.  

**Database**  
Used database is SQLite3, filled by sample data.  
To setup your own db, first create migration files in /migrations dir, and seed.rb file.  
Run migrations then seed.rb as regular ruby files.  

**Routing request to controller action**  
Routes are defined in config/routes.map.rb file.  
Synatax example 1: "*get '/products' => 'products#index'* " means that request to '*GET http.../products*' invoke '*index*' method in '*products_controller.rb*'.  
Synatax example 2: "*put '/products/:id' => 'products#put'* " means that request to '*PUT http.../products/2*' invoke '*put*' method in '*products_controller.rb*', passing 2 as parameter.

**tests**  
Unfortunately specs have already been sold on eBay.
