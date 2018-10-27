Then(/^I fill in the search form$/) do
  fill_in('Search for:', with: 'qui')
end

Then(/^I should see search results$/) do
  page.has_content?('est rerum tempore vitae sequi sint nihil')
end
