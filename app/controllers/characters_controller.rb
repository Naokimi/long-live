class CharactersController < ApplicationController
  def show
    @skill_tree = Character.find(params[:id]).char_skills
    render json: @skill_tree
  end
end
