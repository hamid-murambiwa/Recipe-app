require 'rails_helper'

RSpec.describe 'Recipe', type: :feature do
  describe 'index page' do
    before(:each) do
      visit user_session_path
      @user = User.create!(name: 'first',
                           email: 'first@first.com',
                           password: '123456',
                           confirmed_at: Time.now)

      within('#new_user') do
        fill_in 'Email', with: 'first@first.com'
        fill_in 'Password', with: '123456'
      end
      click_button 'Log in'
      visit recipes_path
    end

    it 'expect page path to be the recipes path' do
      expect(page).to have_current_path recipes_path
    end

    it 'Recipes page shows the right content' do
      expect(page).to have_content('Add Recipe')
    end

    it 'clicking on create a recipe link should go to new recipe page' do
      click_link 'Add Recipe'
      expect(page).to have_current_path new_recipe_url
    end
  end
end
