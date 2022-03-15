class FoodsController < ApplicationController
    def index
        @foods = Food.where(user_id: current_user.id)
    end

    def new
        @categories = ['grams', 'milligrams', 'killograms', 'pound', 'ounce', 'litre', 'cup', 'teaspoon', 'spoon', 'fluid ounce']
    end

    def show
        @user = User.find(params[:user_id])
        @foods = Food.all
    end
    
    def create
        @food = Food.new(mass_params)
        @food.user_id = params[:user_id]

        if @food.save
            redirect_to user_foods_path
        else
            render :new
        end
    end
    
    def destroy
        @food = Food.find(params[:id])
        @user = User.find(params[:user_id])
        @food.destroy!
        @user.save
        redirect_to user_foods_path
        flash[:success] = 'food was deleted!'
    end
    
      private
    
      def mass_params
        params.require(:food).permit(:name, :unit, :price)
      end
end
