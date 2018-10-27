require 'rails_helper'

RSpec.feature 'Searching for posts', type: :feature do
  scenario 'User submits a valid search' do
    visit '/'

    fill_in 'Search for:', with: 'qui'
    click_button 'Search'

    expect(page).to have_text('est rerum tempore vitae sequi sint nihil')
  end

  scenario 'User clicks the alert button', js: true do
    visit '/'

    click_button 'Display Alert'

    expect(page.driver.browser.switch_to.alert.text).to eq('Example Alert')
  end
end
