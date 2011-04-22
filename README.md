under construction...



Testing
-------

Tests are written with shoulda, capybara and factory_girl and run quickly with spork. To get setup, run these commands:

    git clone git://github.com/citrus/spree_essential_press.git
    cd spree_essential_press
    rake db:test_prep
    spork
    
    # in another window
    
    cd to/your/spree_essential_press
    
    # just one test
    testdrb test/unit/press_test.rb
    
    # just unit tests
    testdrb test/unit/*
    
    # all tests
    testdrb test/unit/** test/functional/** test/integration/**