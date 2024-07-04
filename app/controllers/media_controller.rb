class MediaController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: Rails.application.credentials.dig(:auth, :user), password: Rails.application.credentials.dig(:auth, :password), except: [:home, :index, :show]

  def home
    @meta_title = 'Metrak API'
    @meta_description = 'API for Metrak built with Ruby on Rails'
  end

  # GET /media
  def index
    @media = Medium.all

    render json: @media
  end

  # GET /media/1
  def show
    render json: @medium
  end

  #
  def new
    @medium = Medium.new
  end

  #POST /media
  def create
    @medium = Medium.new(medium_params)

    if @medium.save
      #redirect_to root_path
      render json: @medium, status: :created, location: @medium
    else
      #render :new, status: :unprocessable_entity
      render json: @medium.errors, status: :unprocessable_entity
    end
  end 

  #
  def edit
    
  end

  # PATCH/PUT /media/1
  def update
    if @medium.update(medium_params)
      #redirect_to root_path
      render json: @medium
    else
      #render :edit, status: :unprocessable_entity
      render json: @medium.errors, status: :unprocessable_entity
    end
  end

  #DELETE /media/1
  def destroy
    if @medium.destroy
      render body: nil, status: :no_content
    else
      render json: @medium.errors, status: :unprocessable_entity
    end
    #redirect_to root_path, status: :see_other
  end

  private

    def set_params
      @medium = Medium.find(params[:id])
    end
    def medium_params
      params.require(:medium).permit(:title, :format, :appreciation, :year, :end_year)
    end
end
