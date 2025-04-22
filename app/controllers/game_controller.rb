class GameController < ApplicationController
  def homepage
    render( {:template => "game_templates/homepage"})
  end
  def rock 
    @random_move = ["rock", "scissors", "paper"].sample
    if @random_move == "rock"
      @result = "tied"
    elsif @random_move == "scissors"
      @result = "won"
    else
      @result = "lost"
    end
    render( {:template => "game_templates/play_rock"} )
  end
  def paper
    @random_move = ["rock", "scissors", "paper"].sample
    if @random_move == "rock"
      @result = "won"
    elsif @random_move == "scissors"
      @result = "lost"
    else
      @result = "tied"
    end
    render( {:template => "game_templates/play_paper"} )
  end
  def scissors
    @random_move = ["rock", "scissors", "paper"].sample
    if @random_move == "rock"
      @result = "lost"
    elsif @random_move == "scissors"
      @result = "tied"
    else
      @result = "won"
    end
    render( {:template => "game_templates/play_scissors"} )
  end
end
