require 'rails_helper'

RSpec.describe 'search/index.html.erb', type: :view do
  it 'displays search results' do
    assign(:results, [{ id: 1,
                        title: 'qui est esse dolorem',
                        body: 'est rerum tempore vitae sequi sint nihil' }])

    render

    expect(rendered).to match('qui est esse dolorem')
  end
end
