require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  before(:each) do
    posts = [
      Post.create!(title: 'Title', body: 'MyText'),
      Post.create!(title: 'Title', body: 'MyText')
    ]
    assign(:posts, posts)
  end

  it 'renders a list of posts' do
    render
    assert_select 'h2', text: 'Title', count: 2
    assert_select 'p', text: 'MyText', count: 2
  end
end
