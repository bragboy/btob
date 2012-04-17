class ApplicationController < ActionController::Base

  http_basic_authenticate_with :name => "braga", :password => "braga"

  protect_from_forgery
end
