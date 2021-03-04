Quando('adicionar um produto ao carrinho') do
  step 'acessar a home do site'
  cart.ajax_add_to_cart_button.first.click
  cart.wait_until_modal_cart_item_visible(wait:10)
  cart.btn_proceed_checkout.click
end
  
Então('validar valor total da compra') do
  expect(cart).to have_cart_summary
  expect(cart.lbl_total_price.text).to eql(data_load(%w[cart total_price]))
end