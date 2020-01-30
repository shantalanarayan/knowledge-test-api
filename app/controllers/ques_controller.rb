class QuesController < ApplicationController
  before_action :set_que, only: [:show, :update, :destroy]

  # GET /ques
  def index
    @ques = Que.all

    render json: @ques
  end

  # GET /ques/1
  def show
    render json: @que
  end

  # POST /ques
  def create
    @que = Que.new(que_params)

    if @que.save
      render json: @que, status: :created, location: @que
    else
      render json: @que.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ques/1
  def update
    if @que.update(que_params)
      render json: @que
    else
      render json: @que.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ques/1
  def destroy
    @que.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_que
      @que = Que.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def que_params
      params.require(:que).permit(:quest, :topicid)
    end
end
