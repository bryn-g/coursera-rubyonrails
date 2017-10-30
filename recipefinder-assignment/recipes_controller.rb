class RecipesController < ApplicationController
  def index
    # deafult
    @search_term = "chocolate"
    if params[:search]
      @search_term = params[:search]
    end

  	@recipes = Recipe.for(@search_term)
  end
end
