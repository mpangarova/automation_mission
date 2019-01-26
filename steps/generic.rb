module Steps
  module Generic
    def basic_url
      'https://me.sumup.com'
    end

    def reload_page
      visit(basic_url + current_path)
    end

    def go_to_login_page
      visit('https://me.sumup.com/en-us/login/')
    end

    def fill_in_credentials
      fill_in 'username', with: 'maria.pangarova@gmail.com'
      fill_in 'password', with: '1qwerty2'
    end

    def go_to_transaction_view
      find(:xpath, "//*/a[@title='Transactions']").click
    end

    def choose_transaction_history_for_today
      find(
        :xpath,
        "//div[contains(@class, 'css-7gk3jl-ReferenceWrapper-popover__button-wrapper') and contains(.//span, 'Six months')]"
      ).click
      select(find('option[value=THIS_DAY]').text, from: 'timeperiod')
    end

    def choose_transaction_history_for_last_week
      find(
        :xpath,
        "//div[contains(@class, 'css-7gk3jl-ReferenceWrapper-popover__button-wrapper') and contains(.//span, 'Six months')]"
      ).click
      select(find('option[value=LAST_WEEK]').text, from: 'timeperiod')
    end


    def choose_transaction_history_for_last_month
      find(
        :xpath,
        "//div[contains(@class, 'css-7gk3jl-ReferenceWrapper-popover__button-wrapper') and contains(.//span, 'Six months')]"
      ).click
      select(find('option[value=LAST_MONTH]').text, from: 'timeperiod')
    end
  end
end
