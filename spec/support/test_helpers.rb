module TestHelpers
  def sign_in user
    visit root_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
  end
end

RSpec.configure do |config|
  config.include TestHelpers
end


