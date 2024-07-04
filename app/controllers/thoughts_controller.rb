class ThoughtsController < ApplicationController
  before_action :set_params, only: [:show, :update, :destroy]
  http_basic_authenticate_with name: Rails.application.credentials.dig(:auth, :user), password: Rails.application.credentials.dig(:auth, :password), except: [:index, :show]
  
  # GET /media/1/thoughts
  def index
    @medium = Medium.find(params[:medium_id])
    @thoughts = @medium.thoughts

    render json: @thoughts
  end

  # GET /media/1/thoughts/1
  def show
    render json: @thought
  end

  # POST /media/1/thoughts
  def create
    @medium = Medium.find(params[:medium_id])
    @thought = @medium.thoughts.create(thought_params)
    #redirect_to medium_path(@medium)
    if @thought.save
      render json: @thought, status: :created, location: medium_thought_url(@medium, @thought)
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /media/1/thoughts/1
  def update
    if @thought.update(thought_params)
      render json: @thought
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
  end

  # DELETE /media/1/thoughts/1
  def destroy
    if @thought.destroy
      render body: nil, status: :no_content
    else
      render json: @thought.errors, status: :unprocessable_entity
    end
    #redirect_to medium_path(@medium), status: :see_other
  end

  private

    def set_params
      @medium = Medium.find(params[:medium_id])
      @thought = @medium.thoughts.find(params[:id])
    end

    def thought_params
      params.require(:thought).permit(:body, :medium_id)
      #params.permit(:body, :medium_id)
    end
end
