class ThoughtsController < ApplicationController
     def create
    @medium = Medium.find(params[:medium_id])
    @thought = @medium.thoughts.create(thought_params)
    redirect_to medium_path(@medium)
  end

  private
    def thought_params
      params.require(:thought).permit(:body, :status)
    end
end
