class ApplicationController < ActionController::Base
  # before_action :verify_authenticity_token
  skip_before_action :verify_authenticity_token

  private

  def verify_authenticity_token
    if(request.headers['authToken'] != ENV['authToken'])
      render json: { AuthenticationError: 'You are not authorized to perform this action' }, status: 401
    end
  end
end
