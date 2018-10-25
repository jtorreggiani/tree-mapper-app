require 'rails_helper'

RSpec.describe 'welcome/index.html.erb', type: :view do
  it 'displays current date' do
    assign(:date, Date.parse('2020-01-01'))

    render

    expect(rendered).to match('2020-01-01')
  end
end
