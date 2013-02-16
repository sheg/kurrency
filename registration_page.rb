#!/usr/bin/ruby

require 'rubygems'
require 'selenium-webdriver'
require 'page-object'

class RegistrationPage
  include PageObject

  page_url "https://www.kurrenci.com/custom/login/register.aspx"

  text_field(:first_name, :id => 'txtFirstname')
  text_field(:last_name, :id => 'txtLastname')
  text_field(:email, :id => 'UserName')
  text_field(:password, :id => 'Password')
  text_field(:password_confirm, :id => 'ConfirmPassword')
  button(:create, :id => 'btnRegister')

  def registerRandomEmail ()
     random_email = "auto_user" + rand(999999999).to_s + "@gmail.com"
     first_name_element.send_keys('sheg')
     last_name_element.send_keys('the_fat_automator')
     email_element.send_keys(random_email)
     password_element.send_keys('rice8080')
     password_confirm_element.send_keys('rice8080')
     button_element.click
  end
end
