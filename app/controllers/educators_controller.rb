class EducatorsController < ApplicationController

  before_action :find_educator, only: [:show, :edit, :update, :destroy]

  def index
    @educators = Educator.all

    @searchkey = ''
    if params[:q] != nil
      @searchkey = params[:q]
      @educators = Educator.where('lower(name) LIKE ? OR lower(expertise) LIKE ?',  '%' + @searchkey.downcase + '%',  '%' + @searchkey.downcase + '%')
    end
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

  def list
    @educators = Educator.all
  end

  def request_mentorship
    @educator = Educator.find(params[:educator])
  end

  private
    def educator_params
      params.require(:educator).permit(:name, :expertise, :intro, :timetable, :photo)
    end

    def find_educator
      @educator = Educator.find(params[:id])
    end
end
