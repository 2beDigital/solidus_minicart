Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'shadow_layer',
                     :insert_bottom => "div.container",
                     :text => '<div id="cd-shadow-layer"></div>')
