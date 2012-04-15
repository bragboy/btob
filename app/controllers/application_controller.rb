class ApplicationController < ActionController::Base

  http_basic_authenticate_with :name => "test", :password => "test"

  protect_from_forgery
end
