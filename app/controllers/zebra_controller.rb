class ZebraController < ApplicationController
  @game_results = ""
  @enemy_play = ""
  def giraffe
    @enemy_random = rand(1..3)
    if @enemy_random == 1
      @enemy_play = "They played paper!"
      @game_results ="We lost!"
    elsif @enemy_random == 2
      @enemy_play = "They played scissors!"
      @game_results = "We won!"
      
    else
      @enemy_play = "They played rock!"
      @game_results = "We tie!"
    end

    render({:template => "game_templates/play_rock"})
  end

  def tiger
    @enemy_random = rand(1..3)
    if @enemy_random == 1
      @enemy_play = "They played paper!"
      @game_results ="We tied!"
    elsif @enemy_random == 2
      @enemy_play = "They played scissors!"
      @game_results = "We lost!"
      
    else
      @enemy_play = "They played rock!"
      @game_results = "We won!"
    end
    render({:template => "game_templates/play_paper"})
  end

  def elephant
    @enemy_random = rand(1..3)
    if @enemy_random == 1
      @enemy_play = "They played paper!"
      @game_results ="We won!"
    elsif @enemy_random == 2
      @enemy_play = "They played scissors!"
      @game_results = "We tied!"
      
    else
      @enemy_play = "They played rock!"
      @game_results = "We lost!"
    end
    render({:template => "game_templates/play_scissors"})
  end

  def shark
    render({:template => "game_templates/home"})
  end
end
