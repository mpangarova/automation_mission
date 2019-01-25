require 'rails_helper'

describe "User Features" do
  include Steps::Generic

  it 'does sanity check' do
    go_to_login_page

    fill_in 'username', with: 'Maria'
    expect(find('#username').value).to eq "Maria"
    fill_in 'password', with: '1qwerty2'
    expect(find('#password').value).to eq "1qwerty2"

    click_button('Login')
    expect(current_url).to eq('https://me.sumup.com/en-us/login/')
  end

  it "checks for transactions" do
    go_to_login_page
    fill_in_credentials

    click_button('Login')
    expect(page).to have_current_path('/en-us/overview')

    go_to_transaction_section
    expect(current_url).to eq('https://me.sumup.com/en-us/transactionsnew')

    expect(page).to have_content('We couldn’t find anything that matches your search.')
    # in case of internationalization, better using translation keys
  end
end
