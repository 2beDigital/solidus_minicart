module SpreeMinicart
  module Generators
    class InstallGenerator < Rails::Generators::Base

      class_option :auto_run_migrations, :type => :boolean, :default => false

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/spree_minicart\n"
#        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/spree_minicart\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/spree_minicart\n", :before => /\*\//, :verbose => true
#        inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require spree/backend/spree_minicart\n", :before => /\*\//, :verbose => true
      end


    end
  end
end
