require 'spec_helper'

feature "Editing Topics" do
  scenario "Updating a topic" do
    Factory(:topic, :name => "Molly")
    visit "/"
    click_link "Molly"
    click_link "Edit Topic"
    fill_in "Name", :with => "Patrick"
    click_button "Update Topic"
    page.should have_content("Topic has been updated.")
  end
end
