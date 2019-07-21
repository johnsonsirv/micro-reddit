## Micro-reddit (Building and Testing Models)

Let’s build ``Reddit``. Well, maybe a very junior version of it called ``micro-reddit``. Tthis project involves building and testing of the data structures necessary to support link submissions and commenting.

### Technology:

* Ruby 2.4.0
* Rails 5.2.3
* RSpec (test suite)
* SQLite


###### Database initialization
in your terminal ```rake db:migrate db:test:prepare```

###### How to run the test suite for models

in your terminal run ``` rspec spec/model```

###### Deployment
You can interact with this app in your terminal

Run ```rails console```

Enable the Hirb gem prettifier in your rails console

type ```Hirb.enable```
