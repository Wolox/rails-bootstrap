class TestModelsController < ApplicationController
  def create
    render json: TestModel.create(params.permit(:content, :something))
  end

  include Wor::Paginate
  def index
    render_paginated TestModel
  end
end
