class EducatorsController < ApplicationController

  before_action :find_educator, only: [:show, :edit, :update, :destroy]

  def index
    @educators = Educator.all
  end

  def new
    @educator = Educator.new
  end

  def create
    @educator = Educator.new(educator_params)
    if @educator.save
      redirect_to @educator
    else
      render 'new'
    end

  end

  def show

  end

  def edit

  end

  def update
    if @educator.update(educator_params)
      redirect_to @educator
    else
      render 'edit'
    end
  end

  def destroy
    @educator.destroy
    redirect_to educators_index_path
  end

  private
    def educator_params
      params.require(:educator).permit(:name, :expertise)
    end

    def find_educator
      @educator = Educator.find(params[:id])
    end
end
