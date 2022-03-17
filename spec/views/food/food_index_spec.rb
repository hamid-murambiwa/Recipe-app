require 'rails_helper'

RSpec.describe 'food', type: :feature do
  describe 'index page' do
    before(:each) do
      visit user_session_path
      @user = User.create!(name: '1',
                           email: '1@first.com',
                           password: '111111',
                           confirmed_at: Time.now)

      within('#new_user') do
        fill_in 'Email', with: '1@first.com'
        fill_in 'Password', with: '111111'
      end
      click_button 'Log in'
      visit user_foods_path(@user.id)
    end

    it 'expect page path to be the user foods path' do
      expect(page).to have_current_path user_foods_path(@user.id)
    end

    it 'Recipes page shows the right content' do
      expect(page).to have_content('Add Food')
    end
  end
end
