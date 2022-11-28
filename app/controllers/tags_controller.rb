class TagsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    tags = Tag.all
    render json: tags
  end

  def show
    tag = Tag.find(params[:id])
    self.object.content[0..39]  end

  private

  def render_not_found_response
    render json: { error: "Tag not found" }, status: :not_found
  end

end
