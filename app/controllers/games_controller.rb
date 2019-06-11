class GamesController < ApplicationController

  def index
    if params[:search]
      @games = Game.select_by_keyword(params[:search])
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @games = Game.all
    @consoles = Console.all
  end

  def create
    @game = Game.create(game_params)
    redirect_to game_path(@game)
  end

  def edit
    @game = Game.find(params[:id])
    @consoles = Console.all
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.delete
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game ).permit(:title, :maturity_rating, :price, :genre, :console_id, :search)
  end

end
