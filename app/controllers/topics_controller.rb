# frozen_string_literal: true

class TopicsController < ProtectedController
  before_action :set_topic, only: %i[show update destroy]

  # GET /topics
  def index
    @topics = Topic.all

    render json: @topics
  end

  # GET /topics/1
  def show
    render json: @topic
  end

  # POST /topics
  def create
    @topic = current_user.topics.build(topic_params)

    if @topic.save
      render json: @topic, status: :created, location: @topic
    else
      render json: @topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /topics/1
  def update
    if @topic.update(topic_params)
      render json: @topic
    else
      render json: @topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_topic
    @topic = current_user.topics.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def topic_params
    params.require(:topic).permit(:title, :question, :answer)
  end
end
