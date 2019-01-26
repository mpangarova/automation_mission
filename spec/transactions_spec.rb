require 'rails_helper'

describe "User Features" do
  include Steps::Generic
  include Expectations::Common

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

    # Default - transaction history for last six months
    go_to_transaction_view
    expect_no_transaction_history

    choose_transaction_history_for_today
    expect_no_transaction_history

    reload_page
    choose_transaction_history_for_last_week
    expect_no_transaction_history

    reload_page
    choose_transaction_history_for_last_month
    expect_no_transaction_history
  end
end
