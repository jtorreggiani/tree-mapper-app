# helper method to check if alert is present
# @api public
# @example alert_present?
# @return [Boolean]
def alert_present?
  page.driver.browser.switch_to.alert
  true
rescue # rubocop:disable Style/RescueStandardError
  false
end
