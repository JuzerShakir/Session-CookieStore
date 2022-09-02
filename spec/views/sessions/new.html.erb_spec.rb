require "rails_helper"

RSpec.feature "On login page" do
    before do
        visit login_path
        @existing_visitor = Visitor.create(email: "ext_user@aol.com",
            password: "123456", password_confirmation: "123456")
    end
    scenario "when existing user logs in" do
        fill_in "email", with: @existing_visitor.email
        fill_in "password",	with: @existing_visitor.password
        click_button "Sign In"
        expect(page.current_path).to eq(root_path)
        within "header.navbar" do expect(page).to have_content("Log Out") end
        within "div.alert" do expect(page).to have_content("Welcome Back! A session has been created.") end
        expect(page).to have_content(@existing_visitor.email)
    end
    scenario "when new user logs in"
    scenario "if fields are empty"
end