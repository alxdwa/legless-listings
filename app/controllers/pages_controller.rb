class PagesController < ApplicationController
  def home
    render plain: "home"
  end
end