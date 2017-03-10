# Generated via
#  `rails generate hyrax:work Dissertation`
require 'rails_helper'
include Warden::Test::Helpers

RSpec.feature 'Create a Dissertation' do
  context 'a logged in user' do
    let(:user_attributes) do
      { email: 'test@example.com' }
    end
    let(:user) do
      User.new(user_attributes) { |u| u.save(validate: false) }
    end

    before do
      login_as user
    end

    scenario do
      visit new_curation_concerns_dissertation_path
      fill_in 'Title', with: 'Test Dissertation'
      click_button 'Create Dissertation'
      expect(page).to have_content 'Test Dissertation'
    end
  end
end
