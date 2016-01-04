class GamesController < ApplicationController
  def new
    @game = Game.new
  end
  
  def create
    game_score = Integer(params[:player1_score]) + Integer(params[:player2_score])
    @game = Game.new
    @game.save

    @score1 = Score.new(game_id: @game.id,
                        player_id: params[:player1_id],
                        player_score: Integer(params[:player1_score]),
                        game_score: game_score)
    @score2 = Score.new(game_id: @game.id,
                        player_id: params[:player2_id],
                        player_score: Integer(params[:player2_score]),
                        game_score: game_score)
    @score1.save
    @score2.save
    
    render plain: params.inspect
  end

  private
  def game_params1
    params.require(:game).permit(:player1_id, :player1_score)
  end

    def game_params2
    params.require(:game).permit(:player2_id, :player2_score)
  end
end
