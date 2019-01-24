module Steps
  module Generic
    def go_to_login_page
      visit('https://me.sumup.com/en-us/login/')
    end

    def fill_in_credentials
      fill_in 'username', with: 'maria.pangarova@gmail.com'
      fill_in 'password', with: '1qwerty2'
    end

    def go_to_transaction_section
      find(:xpath, "//*/a[@title='Transactions']").click
    end
  end
end
