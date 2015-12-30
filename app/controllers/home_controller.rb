class HomeController < ApplicationController
  def index
    @players = Player.all.order(grade: :desc)
  end
end
