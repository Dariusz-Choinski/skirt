## skirt

#### A few words about project history:
In some day I went into ruby rack framework website. Because of curiosity I've started to study it deeper then before in the Past. I have already used frameworks based on rack like Sinatra or Rails, in such cases everything was done, just ready to go. I wanted to build a rack application from scratch. Such challenge was an opportunity to learn features of rack which I was never thinking about. Features just work. It was also opportunity to test some concepts regarding architecture of application, routers, and some other things.  
I couldn't find useful example of simply ruby application built in the way I wanted.

I hope this project may helps someone to start his own similar project.

#### About:
This is a tiny ruby framework, mainly designed for rapid creation of API endpoints, but also handling static content from /public dir.  
I use it for development of my own projects in local environment.  
It is used in project [tdd-backbone-demo](https://github.com/Dariusz-Choinski/tdd-backbone-demo) on my GitHub.


#### How to:
**Install**  
Ruby version > 2.  
Clone project then go into project root.   
Run command 'bundle install'.

**Run**   
Run command 'rackup'.  
In shell you will see running webrick server and endpoint url.  
On host server is better to use thin or puma, gives you better control to start, stop or restart app.  

**Setup db**  
Used database is SQLite3, filled by sample data.  
To setup your own db, create migration files in /migrations dir and seed.rb file.  
Run migration files then seed.rb as regular *ruby file*.  

**Route request to controller action**  
Routes are defined in config/routes.map.rb file.  
Synatax example 1: &nbsp; "*get '/products' => 'products#index'*"  
&nbsp;&nbsp; means that request to *GET http.../products* invokes *index* method in *products_controller.rb*.  
Synatax example 2: &nbsp;"*put '/products/:id' => 'products#put'*"  
&nbsp;&nbsp;means that request to *PUT http.../products/2* invokes *put* method in *products_controller.rb*, passing 2 as parameter.

**test**  
Unfortunately specs have already been sold on eBay.  
Write yours.
