require 'rails_helper'

RSpec.describe 'Recipe', type: :feature do
  describe 'index page' do
    before(:each) do
      visit user_session_path
      @user = User.create!(name: 'first',
                           email: 'first@first.com',
                           password: '123456')

      within('#new_user') do
        fill_in 'Email', with: 'first@first.com'
        fill_in 'Password', with: '123456'
      end
      click_button 'Log in'
      @recipe1 = @user.recipes.create!(name: 'Recipe Test', description: 'This is a test recipe',
                                       prep_time: 10, cook_time: 10, public: true)
      visit recipe_path(@recipe1)
      click_link 'Add ingredient'
    end

    it 'should be in right path' do
      expect(page).to have_current_path(new_recipe_recipe_food_path(@recipe1))
    end

    it 'should display the correct contents' do
      expect(page).to have_content('Add Ingredient')
      expect(page).to have_content('Food')
      expect(page).to have_content('Quantity')
    end

    it 'should not redirect when form is not filled' do
      click_button 'Create Recipe Food'
      expect(page).to_not have_current_path(new_recipe_recipe_food_path(@recipe1))
    end
  end
end
