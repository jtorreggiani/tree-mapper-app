# helper method to check if alert is present
# @api public
# @example alert_present?
# @return [Boolean]
def alert_present?
  begin
    page.driver.browser.switch_to.alert
    true
  rescue
    false
  end
end
