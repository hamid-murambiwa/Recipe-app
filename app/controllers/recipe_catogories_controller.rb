class RecipeCatogoriesController < ApplicationController
    def index
        @categories = RecipeCatogory.all
    end
end
