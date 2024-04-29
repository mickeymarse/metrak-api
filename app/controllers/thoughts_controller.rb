class ThoughtsController < ApplicationController
  def create
    @medium = Medium.find(params[:medium_id])
    @thought = @medium.thoughts.create(thought_params)
    redirect_to medium_path(@medium)
  end

  def destroy
    @medium = Medium.find(params[:medium_id])
    @thought = @medium.thoughts.find(params[:id])
    @thought.destroy
    redirect_to medium_path(@medium), status: :see_other
  end

  private
    def thought_params
      params.require(:thought).permit(:body, :status)
    end
end
