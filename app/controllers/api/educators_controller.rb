class Api::EducatorsController < ApplicationController

  def index
    
    @educators = Educator.all
    render json: @educators
  end

end
