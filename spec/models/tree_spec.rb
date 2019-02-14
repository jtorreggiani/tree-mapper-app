require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe Tree, type: :model do
  it 'responds latitude and longitude' do
    tree = Tree.new
    expect(tree.latitude).to be_nil
    expect(tree.latitude).to be_nil
  end

  # it 'assigns title and body on initialization' do
  #   post = Post.new(title: 'example title', body: 'example body')
  #   expect(post.title).to eq('example title')
  #   expect(post.body).to eq('example body')
  # end
  #
  # it 'is valid with a title' do
  #   post = Post.new(title: 'example title')
  #   expect(post).to be_valid
  # end
  #
  # it 'is invalid without a title' do
  #   post = Post.new
  #   expect(post).to_not be_valid
  # end
  #
  # it 'has none to begin with' do
  #   expect(Post.count).to eq 0
  # end
  #
  # it 'has one after adding one' do
  #   Post.create!(title: 'example title', body: 'example body')
  #   expect(Post.count).to eq 1
  # end
  #
  # it 'handles basic searching' do
  #   Post.create!(title: 'my very long complex post title', body: '')
  #   expect(Post.search('complex').count).to eq 1
  # end
end
# rubocop:enable Metrics/BlockLength
