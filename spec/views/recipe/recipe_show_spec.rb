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
      @recipe1 = @user.recipes.create!(name: 'Recipe Test', description: 'This is a test recipe',
                                       prep_time: 10, cook_time: 10, public: true)
      visit recipe_path(@recipe1)
    end

    it 'Recipe page shows the right content' do
      expect(page).to have_content('Recipe Test')
      expect(page).to have_content('Preparation time: 10 Minutes')
      expect(page).to have_content('Cooking time: 10 Minutes')
      expect(page).to have_content('Generate Shopping List')
      expect(page).to have_content('Add ingredient')
    end

    it 'Click on add ingredient will redirect to the right path ' do
      click_link 'Add ingredient'
      expect(page).to have_current_path(new_recipe_recipe_food_path(@recipe1))
    end

    it 'Click on Generate Shopping List will redirect to the right path  ' do
      click_link 'Generate Shopping List'
      expect(page).to have_current_path(recipe_shopping_lists_path(@recipe1))
    end

    it 'Recipe page shows the ingredient table' do
      expect(page).to have_content('Food')
      expect(page).to have_content('Quantity')
      expect(page).to have_content('Value')
      expect(page).to have_content('Action')
    end

    it 'Add ingredient button works' do
      click_link 'Add ingredient'
      expect(page).to have_current_path(new_recipe_recipe_food_path(@recipe1))
    end
  end
end
