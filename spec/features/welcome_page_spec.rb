require 'rails_helper'

RSpec.feature 'Searching for posts', type: :feature do
  scenario 'User submits a valid search' do
    visit '/'

    fill_in 'Search for:', with: 'qui'
    click_button 'Search'

    expect(page).to have_text('est rerum tempore vitae sequi sint nihil')
  end
end
