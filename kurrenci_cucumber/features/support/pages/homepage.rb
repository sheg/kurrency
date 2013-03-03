class HomePage
  include PageObject

  page_url "https://kurrenci.com"

  link(:sign_in, :class => 'signup-btn')

end
