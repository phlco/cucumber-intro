module LoginSteps
  def login(name, password)
    visit('/login')
    fill_in('User Name', with: name)
    fill_in('Password', with: password)
    click_button('Log in')
  end
end

World(LoginSteps)
