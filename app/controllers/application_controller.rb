class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def start
    render html: "app"
  end
end
