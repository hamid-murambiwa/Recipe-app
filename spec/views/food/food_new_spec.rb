require 'rails_helper'

RSpec.describe 'food', type: :feature do
  describe 'new page' do
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
      visit new_user_food_path(@user.id)
    end

    it 'New page shows the right content' do
      expect(page).to have_content('Add Food')
      expect(page).to have_content('Measuring unit')
      expect(page).to have_content('Price')
      expect(page).to have_content('Name')
    end
  end
end
