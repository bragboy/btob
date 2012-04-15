class ApplicationController < ActionController::Base

  http_basic_authenticate_with :name => "frodo", :password => "thering"

  protect_from_forgery
end
