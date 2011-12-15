# Spree Essential Press [![Build Status](https://secure.travis-ci.org/citrus/spree_essential_press.png)](http://travis-ci.org/citrus/spree_essential_press)


A Press Page extension for Spree Commerce.


Installation
------------

In your existing spree site, add the following to your Gemfile:

    gem 'spree_essential_press'
    
Now run:

    bundle install
    
    
Demo
----

You can easily use the test/dummy app as a demo of spree_essentials. Just `cd` to where you develop and run:
    
    git clone git://github.com/citrus/spree_essential_press.git
    cd spree_essential_press
    mv lib/dummy_hooks/after_migrate.rb.sample lib/dummy_hooks/after_migrate.rb
    bundle install
    bundle exec dummier
    cd test/dummy
    bundle exec rails s
    

License
-------

Copyright (c) 2011 Spencer Steffen & Citrus, released under the New BSD License All rights reserved.
