require 'rails_helper'

RSpec.describe WelcomeHelper, type: :helper do
  it "formats date in ISO format" do
    assign(:date, Date.parse("2020-01-01"))

    expect(helper.formatted_date).to eq("2020-01-01")
  end
end
