module Expectations
  module Common
    def expect_no_transaction_history
      expect(current_url).to eq('https://me.sumup.com/en-us/transactionsnew')
      expect(page).to have_content('We couldn’t find anything that matches your search.')
      # in case of internationalization, better using translation keys
    end
  end
end