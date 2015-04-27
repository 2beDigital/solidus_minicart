SpreeMinicart
=============

Minicart feature forked from Stéphane Bounmy.

Minicart allows customer to preview their cart before they start the checkout process. They can also remove items from the cart.

Installation
------------

To install Spree Minicart for spree 3.0.x, just add the following to your Gemfile:


```ruby
gem 'spree_minicart', :git => 'git://github.com/cahein/spree_minicart.git', :branch => "3-0-stable"
```

Now, bundle up with:

```ruby
bundle install
```

And finally run the install generator:

```ruby
rails g spree_minicart:install
```

Customization
-------------

The minicart markup should let you customize the way you want your minicart by using Deface or overriding 'spree/shared/_minicart.html.erb' and 'spree/shared/_minicart_line_items.html.erb'.

If you need to change the js response when you add / update the minicart, check out : 'spree/orders/populate.js.erb' and 'spree/orders/update.js.erb'.


Todo
-------

- Update item quantity in the minicart

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec


Compatibility
------------

Tested under Spree 2.4.x, 3.0.x

Contribute
----------

Pull requests for features and bug fix with tests are welcome.

Copyright (c) 2012 [Stéphane Bounmy], released under the New BSD License
