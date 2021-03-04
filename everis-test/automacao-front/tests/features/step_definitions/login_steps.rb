Dado('acessar a home do site') do
  login.load
  login.wait_until_logo_home_visible(wait:10)
  expect(login).to have_logo_home
end
  
Quando('realizar o login no sistema') do |tipo|
  login.sign_in_menu.click
  if tipo.eql?('positivo')
    login.inpt_email.set data_load(%w[login valido email])
    login.inpt_password.set data_load(%w[login valido password])
    login.btn_submit.click
  else
    login.inpt_email.set data_load(%w[login invalido email])
    login.inpt_password.set data_load(%w[login invalido password])
    login.btn_submit.click
  end
end
  
Então('validar login realizado com sucesso {string}') do |tipo|
  if tipo.eql?('positivo')
    login.wait_until_user_info_menu_visible(wait:10)
    expect(login).not_to have_alert_error
    expect(login).to have_user_info_menu
    expect(login).to have_sign_out_menu
  else
    expect(login).to have_alert_error
    expect(login).not_to have_user_info_menu
    expect(login).not_to have_sign_out_menu
  end
end