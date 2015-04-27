# insert loading message
Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :original => '28aff58816a0675ee013a39f632fa2b61404d0f9',
                     :name => 'append_loading_message',
                     :insert_top => '[data-hook="body"]',
                     :text => %q{<div id="progress"><%= image_tag 'admin/progress.gif' %> <%= Spree.t(:loading) %>...</div>})
