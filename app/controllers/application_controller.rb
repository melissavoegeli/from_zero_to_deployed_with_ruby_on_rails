# All controllers you generate inherit from here
# This is a global controller that Rails automatically
# generates for you that corresponds to app/views/layouts/application.html.erb
class ApplicationController < ActionController::Base
  protect_from_forgery
end
