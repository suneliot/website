class ApplicationController < ActionController::Base
  protect_from_forgery
end

class ApplicationController
  before_filter :ensure_domain

  APP_DOMAIN = 'eliotsun.heroku.com'

  def ensure_domain
    if request.env['HTTP_HOST'] != APP_DOMAIN
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://www.eliotsun.com", :status => 301
    end
  end
end