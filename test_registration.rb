#!/usr/bin/ruby

require 'rubygems'
gem "test-unit"
require "test/unit"
require "registration_page"
require 'watir-webdriver'

class TestRegistration < Test::Unit::TestCase

  def setup
    @driver = Watir::Browser.new :chrome
    @driver.goto "https://www.kurrenci.com/custom/login/register.aspx"
  end

  def testRandomSuccessful
    registrationPage = RegistrationPage.new(@driver)
    registrationPage.registerRandomEmail()
    fail unless @driver.text.include? 'Welcome to Kurrenci'
  end
  
  def teardown
    @driver.close()
  end
end
