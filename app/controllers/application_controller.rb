class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_filter :set_headers

  def set_headers
    @response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
    @response.headers['Access-Control-Allow-Credentials'] = request.headers['Origin'] || '*'
    @response.headers['Access-Control-Allow-Origin'] = '*'
    @response.headers['Access-Control-Expose-Headers'] = 'ETag'
    @response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
    @response.headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match'
    @response.headers['Access-Control-Max-Age'] = '86400'
  end
end
