class Login <::SitePrism::Page
    element :btn_add_to_cart, 'ajax_add_to_cart_button'
    element :modal_cart_item, '#layer_cart'
    element :btn_proceed_checkout, '.btn btn-default button button-medium'
    element :lbl_total_price, '#total_price'
    element :cart_summary, '#cart_summary'
end