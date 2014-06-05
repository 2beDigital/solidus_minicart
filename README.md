SpreeMinicart
=============

Minicart feature forked from Stéphane Bounmy.

Minicart allows customer to preview their cart before they start the checkout process. They can also remove items from the cart.

Installation
------------

To install Spree Minicart for spree 2.2.2, just add the following to your Gemfile:

```ruby
gem 'spree_minicart', '2.2.2'
```

Now, bundle up with:

```ruby
bundle
```

And finally run the install generator to automatically insert 'require spree/frontend/spree_minicart' in your asset file. If you experience a problem with loading assets from the 'vendor/assets' folder, simply copy the relevant lines into the 'app/assets' files (all.js, all.css).

```ruby
rails g spree_minicart:install
```

Customization
-------------

The minicart markup should let you customize the way you want your minicart by using Deface or overriding _minicart.html.erb and _minicart_line_items.html.erb in your spree app.

If you need to change the js response when you add / update the minicart, check out : orders/populate.js.erb and orders/update.js.erb.

Example
-------


Todo
-------

- Can update minicart's item quantity

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Compatibility
------------

Tested under Spree 2.2.2

Contribute
----------

Pull requests for features and bug fix with tests are welcome.

Copyright (c) 2012 [Stéphane Bounmy], released under the New BSD License
