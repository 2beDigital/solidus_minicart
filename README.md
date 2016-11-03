SolidusMinicart
=============

Minicart feature forked from Stéphane Bounmy.

Minicart allows customer to preview their cart before they start the checkout process. They can also remove items from the cart.

Installation
------------

To install Solidus Minicart for solidus 2.0, just add the following to your Gemfile:


```ruby
gem 'solidus_minicart', :git => 'https://github.com/2beDigital/solidus_minicart', branch: 'master'
```

Now, bundle up with:

```ruby
bundle install
```

And finally run the install generator to automatically insert 'require spree/frontend/spree_minicart' in your asset file. If you experience a problem with loading assets from the 'vendor/assets' folder, simply copy the relevant lines into the 'app/assets' files (all.js, all.css).

```ruby
rails g solidus_minicart:install
```

Customization
-------------

The minicart markup should let you customize the way you want your minicart by using Deface or overriding 'spree/shared/_minicart.html.erb' and 'spree/shared/_minicart_line_items.html.erb'.

If you need to change the js response when you add / update the minicart, check out : 'spree/orders/populate.js.erb' and 'spree/orders/update.js.erb'.


Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

The Gemfile needs

```ruby
gem 'solidus', '2.0'
# Provides basic authentication functionality for testing parts of your engine
gem 'solidus_auth_devise', github: 'solidusio/solidus_auth_devise'
```

Compatibility
------------

Tested under Solidus 2.0

Contribute
----------

Pull requests for features and bug fix with tests are welcome.

Copyright (c) 2012 [Stéphane Bounmy], released under the New BSD License
