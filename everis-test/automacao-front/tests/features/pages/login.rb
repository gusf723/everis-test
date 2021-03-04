class Login <::SitePrism::Page
    set_url 'http://automationpractice.com/index.php'
    element :logo_home, '.logo img-responsive'
    element :sign_in_menu, '.login'
    element :inpt_email, '#email'
    element :inpt_password, '#passwd'
    element :btn_submit, '#SubmitLogin'
    element :sign_out_menu, '.logout'
    element :user_info_menu, '.header_user_info'
    element :alert_error, '.alert alert-danger'
end