require 'rails_helper'

describe "the view image path" do
  it "allows a user to view image details by clicking an image" do
      image = FactoryGirl.create(:image)
      visit root_url
      click_link image.title
      expect(page).to have_content(image.title)
  end
end
