# insert loading message
Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :original => '9178f5dcd2363e3ff876de879c2eafe259f64038',
                     :name => 'append_loading_message',
                     :insert_top => "#wrapper",
                     :text => %q{<div id="progress"><%= image_tag 'admin/progress.gif' %> <%= Spree.t(:loading) %>...</div>})
