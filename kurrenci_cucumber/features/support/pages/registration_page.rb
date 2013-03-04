class RegistrationPage
  include PageObject
  include DataMagic

  text_field(:firstname, :id => 'txtFirstname')
  text_field(:lastname, :id => 'txtLastname')
  text_field(:email, :id => 'UserName')
  text_field(:password, :id => 'Password')
  text_field(:password_confirm, :id => 'ConfirmPassword')
  button(:create_account, :id => 'btnRegister')

  def register_new_user(data = {})
    populate_page_with data_for :registration_page
    create_account
  end
end
