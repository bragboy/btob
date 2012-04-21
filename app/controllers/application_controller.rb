class ApplicationController < ActionController::Base

  http_basic_authenticate_with :name => MetaData.select(:value).where("key = ?", "global_username").first.value, :password => MetaData.select(:value).where("key = ?", "global_password").first.value

  protect_from_forgery
end
