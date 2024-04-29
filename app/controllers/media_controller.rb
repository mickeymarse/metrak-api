class MediaController < ApplicationController
  # http_basic_authenticate_with name: "mickey", password: "1234", except: [:index, :show]

  def index
    @media = Medium.all
  end

  def show
    @medium = Medium.find(params[:id])
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(medium_params)

    if @medium.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end 

   def edit
    @medium = Medium.find(params[:id])
  end

  def update
    @medium = Medium.find(params[:id])

    if @medium.update(medium_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

   def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def medium_params
    params.require(:medium).permit(:title, :type, :appreciation, :image)
  end
end
