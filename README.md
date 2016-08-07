Build a Blog with Ruby on Rails
===============================

This project consists of the creation of a simple blog system in order to learn the basics of Ruby on Rails including:

* Models, Views, and Controllers -> MVC
* Data Structures & Relationships
* Routing
* Migrations
* Views with forms, partials, and helpers
* RESTful design
* Adding gems for extra features (paperclip for image attachments)
* Simple RSS Feed

Instructions
------------

From a user perspective, these are the instructions for how to download and run the tests:

```sh
 $ git clone https://github.com/omajul85/RoR---blog
 $ cd RoR---blog/
 $ bundle install
 $ bin/rake db:setup (if this does not migrate the db, run bin/rake db:migrate)
```
To run the app:
```sh
$ bin/rails s
```
Then go to `http://localhost:3000/` in the browser oy your preference. 

Deployment
----------

The application has been pushed to Heroku using Git. You can use it <a href="https://blogger-omajul85.herokuapp.com/" target="_blank">here</a>.

RSS Feed
--------

You can use the Feed reader of your choice in order to get the last 10 articles from the blog. Use the URL "https://blogger-omajul85.herokuapp.com/" on the Feed Reader and you will be updated. In the image below, you see the example of its usage with [Feedly](https://feedly.com):

![Feedly](https://s19.postimg.org/b521rll6b/Feedly.png)