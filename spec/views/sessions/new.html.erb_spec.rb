require "rails_helper"

RSpec.feature "On login page" do
    before do
        visit login_path
        @existing_visitor = Visitor.create(email: "ext_user@aol.com",
            password: "123456", password_confirmation: "123456")
        @new_visitor = Visitor.new(email: "new_user@yahoo.com", password: "123456")
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

    scenario "when new user logs in" do
        fill_in "email", with: @new_visitor.email
        fill_in "password",	with: @new_visitor.password
        click_button "Sign In"
        expect(page.current_path).to eq(signup_path)
        within "div.alert" do expect(page).to have_content("Email doesn't exist! Please Sign up!") end
    end

    scenario "if fields are empty" do
        click_button "Sign In"
        expect(page.current_path).to eq(login_path)
        within "div.alert" do expect(page).to have_content("Fields cannot be empty!") end
    end
end