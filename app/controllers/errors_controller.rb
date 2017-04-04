class ErrorsController < ApplicationController
  # skip_before_action :authenticate_request

  def routing_error
    head :not_found
  end
end
